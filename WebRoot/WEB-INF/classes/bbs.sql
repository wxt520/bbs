/*
SQLyog Ultimate v12.4.1 (64 bit)
MySQL - 5.5.49 : Database - bbs
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bbs` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bbs`;

/*Table structure for table `jbbs_bankuai` */

DROP TABLE IF EXISTS `jbbs_bankuai`;

CREATE TABLE `jbbs_bankuai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `type` varchar(1) DEFAULT NULL,
  `descs` varchar(2000) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `orderby` int(11) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `createuserid` int(11) DEFAULT NULL,
  `fatiegroup` varchar(2000) DEFAULT NULL,
  `huifugroup` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `jbbs_bankuai` */

insert  into `jbbs_bankuai`(`id`,`name`,`img`,`type`,`descs`,`parentid`,`orderby`,`createtime`,`createuserid`,`fatiegroup`,`huifugroup`) values 
(1,'论坛','bankuai.jpg',NULL,'论坛',0,1,'2017-07-03 13:32:35',1,'',''),
(2,'javaee论坛','bankuai.jpg',NULL,'javaee论坛',1,2,'2017-07-03 13:32:45',1,'','');

/*Table structure for table `jbbs_group` */

DROP TABLE IF EXISTS `jbbs_group`;

CREATE TABLE `jbbs_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `createuserid` int(11) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `isdel` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `jbbs_group` */

insert  into `jbbs_group`(`id`,`groupname`,`createtime`,`createuserid`,`state`,`isdel`) values 
(1,'超级管理员','2017-05-09',1,'1','1'),
(2,'版主组','2017-05-09',1,'1','1'),
(3,'普通会员','2017-05-09',1,'1','1');

/*Table structure for table `jbbs_group_user` */

DROP TABLE IF EXISTS `jbbs_group_user`;

CREATE TABLE `jbbs_group_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `jbbs_group_user` */

insert  into `jbbs_group_user`(`id`,`userid`,`groupid`) values 
(1,1,1),
(2,2,3),
(3,3,3);

/*Table structure for table `jbbs_huifu` */

DROP TABLE IF EXISTS `jbbs_huifu`;

CREATE TABLE `jbbs_huifu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tieziid` int(11) DEFAULT NULL,
  `huifuid` int(11) DEFAULT NULL,
  `contenthtml` longtext,
  `contenttxt` longtext,
  `createtime` varchar(255) DEFAULT NULL,
  `createuserid` int(11) DEFAULT NULL,
  `lastupdate` varchar(2000) DEFAULT NULL,
  `isdel` varchar(2) DEFAULT NULL,
  `orderby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jbbs_huifu_tieziid_index` (`tieziid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `jbbs_huifu` */

insert  into `jbbs_huifu`(`id`,`tieziid`,`huifuid`,`contenthtml`,`contenttxt`,`createtime`,`createuserid`,`lastupdate`,`isdel`,`orderby`) values 
(1,1,NULL,'<p>很好。</p>','很好。','2017-07-15 17:20:22',3,NULL,'0',1);

/*Table structure for table `jbbs_info` */

DROP TABLE IF EXISTS `jbbs_info`;

CREATE TABLE `jbbs_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `indextitle` varchar(2000) DEFAULT NULL,
  `name` varchar(2000) DEFAULT NULL,
  `keywords` varchar(2000) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `logoimg` varchar(2000) DEFAULT NULL,
  `foothtml` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `jbbs_info` */

insert  into `jbbs_info`(`id`,`indextitle`,`name`,`keywords`,`description`,`logoimg`,`foothtml`) values 
(1,'国内免费开源javaee论坛源码系统','javaee论坛','javaee,开源论坛,免费论坛,javaee论坛','国内唯一一款免费开源javaee论坛源码系统，采用springMVC+mybatis框架开发。','20170513/2017051321351528862961.PNG','<a href=\"http://bbs.javaee.cc\">JAVAEE</a><span class=\"pipe\">|</span><a href=\"http://www.javaee.cc\">微科通硕</a><span class=\"pipe\">|</span><a href=\"http://www.javaee.cc\" target=\"_blank\">HY</a>');

/*Table structure for table `jbbs_jifen` */

DROP TABLE IF EXISTS `jbbs_jifen`;

CREATE TABLE `jbbs_jifen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tieziid` int(11) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `fenshu` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `operateuserid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `jbbs_jifen` */

insert  into `jbbs_jifen`(`id`,`tieziid`,`content`,`type`,`createtime`,`fenshu`,`userid`,`operateuserid`) values 
(1,NULL,'每天第一次登录您获得2积分','104','2017-07-15 14:38:26',2,1,NULL),
(2,NULL,'您发布了帖子获得2积分','101','2017-07-15 16:54:12',2,1,NULL),
(3,NULL,'每天第一次登录您获得2积分','104','2017-07-15 16:59:31',2,2,NULL),
(4,NULL,'每天第一次登录您获得2积分','104','2017-07-15 17:19:29',2,3,NULL),
(5,NULL,'您回复了帖子获得1积分','102','2017-07-15 17:20:23',1,3,NULL);

/*Table structure for table `jbbs_jifen_group` */

DROP TABLE IF EXISTS `jbbs_jifen_group`;

CREATE TABLE `jbbs_jifen_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `jifen` int(11) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `descs` varchar(2000) DEFAULT NULL,
  `createuserid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `jbbs_jifen_group` */

insert  into `jbbs_jifen_group`(`id`,`name`,`jifen`,`classname`,`createtime`,`descs`,`createuserid`) values 
(1,'VIP1',0,'VIP1',NULL,NULL,NULL),
(2,'VIP2',100,'VIP2',NULL,NULL,NULL),
(3,'VIP3',200,'VIP3',NULL,NULL,NULL),
(4,'VIP4',300,'VIP4',NULL,NULL,NULL),
(5,'VIP5',400,'VIP5',NULL,NULL,NULL),
(6,'VIP6',500,'VIP6',NULL,NULL,NULL),
(7,'VIP7',600,'VIP7',NULL,NULL,NULL),
(8,'VIP8',700,'VIP8',NULL,NULL,NULL),
(9,'VIP9',800,'VIP9',NULL,NULL,NULL),
(10,'VIP10',900,'VIP10',NULL,NULL,NULL),
(11,'VIP11',1000,'VIP11',NULL,NULL,NULL),
(12,'VIP12',1100,'VIP12',NULL,NULL,NULL),
(13,'VIP13',1200,'VIP13',NULL,NULL,NULL),
(14,'VIP14',1300,'VIP14',NULL,NULL,NULL),
(15,'VIP15',1400,'VIP15',NULL,NULL,NULL);

/*Table structure for table `jbbs_link` */

DROP TABLE IF EXISTS `jbbs_link`;

CREATE TABLE `jbbs_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(2000) DEFAULT NULL,
  `link` varchar(2000) DEFAULT NULL,
  `createuserid` int(11) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `orderby` int(11) DEFAULT NULL,
  `bankuaiid` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  `isshow` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `jbbs_link` */

/*Table structure for table `jbbs_tiezi` */

DROP TABLE IF EXISTS `jbbs_tiezi`;

CREATE TABLE `jbbs_tiezi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(2000) DEFAULT NULL,
  `contenthtml` longtext,
  `contenttxt` longtext,
  `createtime` varchar(255) DEFAULT NULL,
  `createuserid` int(11) DEFAULT NULL,
  `bankuai_id` int(11) DEFAULT NULL,
  `zhutiid` varchar(255) DEFAULT NULL,
  `lastupdate` varchar(2000) DEFAULT NULL,
  `jinghua` varchar(255) DEFAULT NULL,
  `zhiding` varchar(255) DEFAULT NULL,
  `findcount` int(11) DEFAULT '0',
  `huifuid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jbbs_tiezi_bankuai_id_index` (`bankuai_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `jbbs_tiezi` */

insert  into `jbbs_tiezi`(`id`,`name`,`contenthtml`,`contenttxt`,`createtime`,`createuserid`,`bankuai_id`,`zhutiid`,`lastupdate`,`jinghua`,`zhiding`,`findcount`,`huifuid`) values 
(1,' java中ServletContext作用功能','<p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">ServletContext,是一个全局的储存信息的空间，服务器开始，其就存在，服务器关闭，其才释放。request，一个用户可有多个；session，一个用户一个；而servletContext，所有用户共用一个。所以，为了节省空间，提高效率，ServletContext中，要放必须的、重要的、所有用户需要共享的线程又是安全的一些信息。</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">换一种方式说吧，运行在Java虚拟机中的每一个Web应用程序都有一个与之相关的Servlet上下文。ServletContext对象是Web服务器中的一个已知路径的根，Servlet上下文被定位于http://localhost:8080/项目名.以 /项目名 请求路径（称为上下文路径）开始的所有请求被发送到与此ServletContext关联的Web应用程序。一个ServletContext对象表示了一个Web应用程序的上下文。</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">Servlet上下文：Servlet上下文提供对应用程序中所有Servlet所共有的各种资源和功能的访问。Servlet上下文API用于设置应用程序中所有Servlet共有的信息。Servlet可能需要共享他们之间的共有信息。运行于同一服务器的Servlet有时会共享资源，如JSP页面、文件和其他Servlet。</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">举例：</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">如，做一个购物类的网站，要从数据库中提取物品信息，如果用session保存这些物品信息，每个用户都访问一便数据库，效率就太低了；所以要用来Servlet上下文来保存，在服务器开始时，就访问数据库，将物品信息存入Servlet上下文中，这样，每个用户只用从上下文中读入物品信息就行了。</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">&nbsp;</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">3.1 ServletContext接口简介</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">ServletContext接口定义了运行servlet的web应用的servlet视图。容器供应商负责提供servlet容器内ServletContext接口的实现。使用ServletContext对象，servlet可以记录事件日志，获取资源的URL地址，并且设置和保存上下文内可以访问的其他servlet的属性。</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">ServletContext以web的已知路径为根路径。比如，假定一个servlet上下文位于,以/catalog请求路径开头的所有请求，已知为上下文路径，被路由到和该ServletContext关联的web应用。</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">3.2 ServletContext接口作用域</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">容器中部署的每一个web应用都有一个ServletContext接口的实例对象与之关联。如果容器被分布在多个虚拟机上，一个web应用将在每一个VM中有一个ServletContext实例。</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">不作为web应用一部分部署的容器中的servlet默认是“默认”web应用的一部分，有一个默认的ServletContext。在分布式容器中。默认ServletContext是非分布式的，并且必须只存在于一个VM中。</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">3.3 初始化参数</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">ServletContext接口的初始化参数允许servlet访问与web应用相关的上下文初始化参数，这些由应用开发人员在部署描述符中指定：</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">getInitParameter</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">getInitParameterNames</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">应用开发人员利用初始化参数传送配置信息。典型的例子是web管理员的e-mail地址或者一个持有关键数据的系统名称。</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">3.4 上下文属性</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">servlet可以通过名称将对象属性绑定到上下文。任何绑定到上下文的属性可以被同一个web应用的其他servlet使用。ServletContext接口的下列方法允许访问这种功能：</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">setAttribute</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">getAttribute</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">getAttributeNames</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">removeAttribute</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">3.4.1 分布式容器中的上下文属性</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">上下文属性对于创建它们的VM来说是本地的。这防止ServletContext属性存储于分布式容器的共享内存中。当信息需要在运行于分布式环境中的servlet之间共享时，信息被放入会话中（参见第7章“会话”），存储于数据库中，或者存储于EJB组件中。</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">3.5 资源</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">ServletContext接口通过下列方法提供对web应用组成的静态内容文档层级的直接访问，包括HTML，GIF和JPEG文件：</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">getResource</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">getResourceAsStream</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">getResource和getResourceAsStream方法以“/”开头的字符串为参数，它指定上下文根路径的资源相对路径。文档的层级可能存在于服务器的文件系统，war文件，远程服务器或者在一些其它位置中。</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">这些方法不用来获取动态内容。比如，在一个支持JSP规范1的容器中，getResource(&quot;/index.jsp&quot;)这种形式的方法调用将返回JSP源代码，而不是处理后的输出。关于访问动态内容的更多信息参见第8章“转发请求”。</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">Web应用资源的完整列表可以使用getResourcePaths(String path)方法访问。该方法语义的完整信息可以在本规范的API文档中找到。</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">3.6 多个主机和ServletContext</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">Web服务器可能支持一个服务器上多个逻辑主机共享一个IP地址。这功能有时被称为“虚拟主机”。这种情况下，每一个逻辑主机必须有它自己的servlet上下文或者servlet上下文组。Servlet上下文不可以被多个虚拟主机共享。</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">3.7 重载考虑</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">尽管容器供应商因为对于易于开发而实现的类加载不做要求，但是任何那样的实现必须确保所有它们可能使用2的所有servlet和类，被加载在单个类加载器作用域内。必须保证应用应该如开发人员预想的那样运转。作为开发辅助，绑定监听器的会话通知的完整语义应当由容器支持，在类加载上会话终止的监听上使用。</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">上一代的容器创建新的类加载器以加载servlet，这和用来加载servlet上下文中使用的其他servlet或者类的类加载器不同。这可能造成servlet上下文内的对象引用指向一个意想不到的类或对象，造成意想不到的行为。需要阻止由新一代类加载器所引发的问题。</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">3.7.1 临时工作目录</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">每一个servlet上下文都需要一个临时存储目录。Servlet容器必须为每一个servlet上下文提供一个私有的临时目录，并且使它可以通过javax.servlet.context.tempdir上下文属性可用。这些属性关联的对象必须是java.io.File类型。</span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\"><br/></span></p><p style=\"word-wrap: break-word; font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Helvetica Neue&#39;, Arial, &#39;Hiragino Sans GB&#39;, STHeiti, &#39;Microsoft Yahei&#39;, SimSun, &#39;WenQuanYi Micro Hei&#39;, sans-serif; white-space: normal; background-color: rgb(245, 245, 245);\"><span style=\"word-wrap: break-word;\">这项需求认可了很多servlet引擎实现中提供的常见便利。容器不需要在servlet重启时维持临时目录的内容，但是需要确保一个servlet上下文的临时目录的内容对于该servlet容器上运行的其他web应用的servlet上下文不可见。</span></p><p><br/></p>','ServletContext,是一个全局的储存信息的空间，服务器开始，其就存在，服务器关闭，其才释放。request，一个用户可有多个；session，一个用户一个；而servletContext，所有用户共用一个。所以，为了节省空间，提高效率，ServletContext中，要放必须的、重要的、所有用户需要共享的线程又是安全的一些信息。换一种方式说吧，运行在Java虚拟机中的每一个Web应用程序都有一个与之相关的Servlet上下文。ServletContext对象是Web服务器中的一个已知路径的根，Servlet上下文被定位于http://localhost:8080/项目名.以 /项目名 请求路径（称为上下文路径）开始的所有请求被发送到与此ServletContext关联的Web应用程序。一个ServletContext对象表示了一个Web应用程序的上下文。Servlet上下文：Servlet上下文提供对应用程序中所有Servlet所共有的各种资源和功能的访问。Servlet上下文API用于设置应用程序中所有Servlet共有的信息。Servlet可能需要共享他们之间的共有信息。运行于同一服务器的Servlet有时会共享资源，如JSP页面、文件和其他Servlet。举例：如，做一个购物类的网站，要从数据库中提取物品信息，如果用session保存这些物品信息，每个用户都访问一便数据库，效率就太低了；所以要用来Servlet上下文来保存，在服务器开始时，就访问数据库，将物品信息存入Servlet上下文中，这样，每个用户只用从上下文中读入物品信息就行了。 3.1 ServletContext接口简介ServletContext接口定义了运行servlet的web应用的servlet视图。容器供应商负责提供servlet容器内ServletContext接口的实现。使用ServletContext对象，servlet可以记录事件日志，获取资源的URL地址，并且设置和保存上下文内可以访问的其他servlet的属性。ServletContext以web的已知路径为根路径。比如，假定一个servlet上下文位于,以/catalog请求路径开头的所有请求，已知为上下文路径，被路由到和该ServletContext关联的web应用。3.2 ServletContext接口作用域容器中部署的每一个web应用都有一个ServletContext接口的实例对象与之关联。如果容器被分布在多个虚拟机上，一个web应用将在每一个VM中有一个ServletContext实例。不作为web应用一部分部署的容器中的servlet默认是“默认”web应用的一部分，有一个默认的ServletContext。在分布式容器中。默认ServletContext是非分布式的，并且必须只存在于一个VM中。3.3 初始化参数ServletContext接口的初始化参数允许servlet访问与web应用相关的上下文初始化参数，这些由应用开发人员在部署描述符中指定：getInitParametergetInitParameterNames应用开发人员利用初始化参数传送配置信息。典型的例子是web管理员的e-mail地址或者一个持有关键数据的系统名称。3.4 上下文属性servlet可以通过名称将对象属性绑定到上下文。任何绑定到上下文的属性可以被同一个web应用的其他servlet使用。ServletContext接口的下列方法允许访问这种功能：setAttributegetAttributegetAttributeNamesremoveAttribute3.4.1 分布式容器中的上下文属性上下文属性对于创建它们的VM来说是本地的。这防止ServletContext属性存储于分布式容器的共享内存中。当信息需要在运行于分布式环境中的servlet之间共享时，信息被放入会话中（参见第7章“会话”），存储于数据库中，或者存储于EJB组件中。3.5 资源ServletContext接口通过下列方法提供对web应用组成的静态内容文档层级的直接访问，包括HTML，GIF和JPEG文件：getResourcegetResourceAsStreamgetResource和getResourceAsStream方法以“/”开头的字符串为参数，它指定上下文根路径的资源相对路径。文档的层级可能存在于服务器的文件系统，war文件，远程服务器或者在一些其它位置中。这些方法不用来获取动态内容。比如，在一个支持JSP规范1的容器中，getResource(\"/index.jsp\")这种形式的方法调用将返回JSP源代码，而不是处理后的输出。关于访问动态内容的更多信息参见第8章“转发请求”。Web应用资源的完整列表可以使用getResourcePaths(String path)方法访问。该方法语义的完整信息可以在本规范的API文档中找到。3.6 多个主机和ServletContextWeb服务器可能支持一个服务器上多个逻辑主机共享一个IP地址。这功能有时被称为“虚拟主机”。这种情况下，每一个逻辑主机必须有它自己的servlet上下文或者servlet上下文组。Servlet上下文不可以被多个虚拟主机共享。3.7 重载考虑尽管容器供应商因为对于易于开发而实现的类加载不做要求，但是任何那样的实现必须确保所有它们可能使用2的所有servlet和类，被加载在单个类加载器作用域内。必须保证应用应该如开发人员预想的那样运转。作为开发辅助，绑定监听器的会话通知的完整语义应当由容器支持，在类加载上会话终止的监听上使用。上一代的容器创建新的类加载器以加载servlet，这和用来加载servlet上下文中使用的其他servlet或者类的类加载器不同。这可能造成servlet上下文内的对象引用指向一个意想不到的类或对象，造成意想不到的行为。需要阻止由新一代类加载器所引发的问题。3.7.1 临时工作目录每一个servlet上下文都需要一个临时存储目录。Servlet容器必须为每一个servlet上下文提供一个私有的临时目录，并且使它可以通过javax.servlet.context.tempdir上下文属性可用。这些属性关联的对象必须是java.io.File类型。这项需求认可了很多servlet引擎实现中提供的常见便利。容器不需要在servlet重启时维持临时目录的内容，但是需要确保一个servlet上下文的临时目录的内容对于该servlet容器上运行的其他web应用的servlet上下文不可见。','2017-07-15 16:54:12',1,2,'1','',NULL,NULL,9,1);

/*Table structure for table `jbbs_user` */

DROP TABLE IF EXISTS `jbbs_user`;

CREATE TABLE `jbbs_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `loginname` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `qianming` varchar(2000) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `lastlogintime` varchar(255) DEFAULT NULL,
  `zhuceip` varchar(255) DEFAULT NULL,
  `loginip` varchar(255) DEFAULT NULL,
  `flag` varchar(2) DEFAULT NULL,
  `jifen` int(11) DEFAULT NULL,
  `onlinetime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `jbbs_user` */

insert  into `jbbs_user`(`id`,`name`,`loginname`,`pwd`,`img`,`email`,`birthday`,`sex`,`mobile`,`qianming`,`createtime`,`lastlogintime`,`zhuceip`,`loginip`,`flag`,`jifen`,`onlinetime`) values 
(1,'管理员','admin1','4QrcOUm6Wau+VuBX8g+IPg==','touxiang.jpg','','1999-05-05','1','','','2017-07-03 13:29:15','2017-07-15 17:35:26','10.177.10.182','192.168.1.105','1',4,3420),
(2,NULL,'user01','4QrcOUm6Wau+VuBX8g+IPg==','touxiang.jpg','',NULL,NULL,NULL,NULL,'2017-07-15 16:58:55','2017-07-15 17:15:27','192.168.1.105','192.168.1.105','1',2,750),
(3,NULL,'user02','4QrcOUm6Wau+VuBX8g+IPg==','touxiang.jpg','',NULL,NULL,NULL,NULL,'2017-07-15 17:18:58','2017-07-15 17:19:29','192.168.1.105','192.168.1.105','1',3,1380);

/*Table structure for table `jbbs_user_liuyan` */

DROP TABLE IF EXISTS `jbbs_user_liuyan`;

CREATE TABLE `jbbs_user_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contenthtml` longtext,
  `liuyanuserid` int(11) DEFAULT NULL,
  `createuserid` int(11) DEFAULT NULL,
  `createtime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jbbs_user_liuyan` */

/*Table structure for table `jbbs_zhuti` */

DROP TABLE IF EXISTS `jbbs_zhuti`;

CREATE TABLE `jbbs_zhuti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `bankuai_id` int(11) DEFAULT NULL,
  `orderby` int(11) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `jbbs_zhuti` */

insert  into `jbbs_zhuti`(`id`,`name`,`bankuai_id`,`orderby`,`createtime`) values 
(1,'javaee论坛',2,1,'2017-07-03 13:32:58');

/*Table structure for table `jbbs_jifen_group_user` */

DROP TABLE IF EXISTS `jbbs_jifen_group_user`;

/*!50001 DROP VIEW IF EXISTS `jbbs_jifen_group_user` */;
/*!50001 DROP TABLE IF EXISTS `jbbs_jifen_group_user` */;

/*!50001 CREATE TABLE  `jbbs_jifen_group_user`(
 `jifen_groupid` bigint(11) ,
 `userid` int(11) 
)*/;

/*View structure for view jbbs_jifen_group_user */

/*!50001 DROP TABLE IF EXISTS `jbbs_jifen_group_user` */;
/*!50001 DROP VIEW IF EXISTS `jbbs_jifen_group_user` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jbbs_jifen_group_user` AS select (select `tt2`.`id` from `jbbs_jifen_group` `tt2` where (`tt2`.`jifen` <= `t1`.`jifen`) order by `tt2`.`jifen` desc limit 0,1) AS `jifen_groupid`,`t1`.`id` AS `userid` from `jbbs_user` `t1` */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
