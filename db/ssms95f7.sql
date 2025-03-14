-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssms95f7
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612052674222 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (91,'2021-01-31 00:03:47',1,1,'提问1','回复1',1),(92,'2021-01-31 00:03:47',2,2,'提问2','回复2',2),(93,'2021-01-31 00:03:47',3,3,'提问3','回复3',3),(94,'2021-01-31 00:03:47',4,4,'提问4','回复4',4),(95,'2021-01-31 00:03:47',5,5,'提问5','回复5',5),(96,'2021-01-31 00:03:47',6,6,'提问6','回复6',6),(1612052360939,'2021-01-31 00:19:20',1612052165949,NULL,'这里可以咨询',NULL,0),(1612052674221,'2021-01-31 00:24:33',1612052165949,1,NULL,'这里回复咨询',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssms95f7/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssms95f7/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssms95f7/upload/picture3.jpg'),(6,'homepage',NULL),(7,'picture4','http://localhost:8080/ssms95f7/upload/1612052650905.png');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusshuodongxinxi`
--

DROP TABLE IF EXISTS `discusshuodongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusshuodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='活动信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusshuodongxinxi`
--

LOCK TABLES `discusshuodongxinxi` WRITE;
/*!40000 ALTER TABLE `discusshuodongxinxi` DISABLE KEYS */;
INSERT INTO `discusshuodongxinxi` VALUES (161,'2021-01-31 00:03:47',1,1,'评论内容1','回复内容1'),(162,'2021-01-31 00:03:47',2,2,'评论内容2','回复内容2'),(163,'2021-01-31 00:03:47',3,3,'评论内容3','回复内容3'),(164,'2021-01-31 00:03:47',4,4,'评论内容4','回复内容4'),(165,'2021-01-31 00:03:47',5,5,'评论内容5','回复内容5'),(166,'2021-01-31 00:03:47',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusshuodongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussmeishixinxi`
--

DROP TABLE IF EXISTS `discussmeishixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussmeishixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612052202958 DEFAULT CHARSET=utf8 COMMENT='美食信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussmeishixinxi`
--

LOCK TABLES `discussmeishixinxi` WRITE;
/*!40000 ALTER TABLE `discussmeishixinxi` DISABLE KEYS */;
INSERT INTO `discussmeishixinxi` VALUES (141,'2021-01-31 00:03:47',1,1,'评论内容1','回复内容1'),(142,'2021-01-31 00:03:47',2,2,'评论内容2','回复内容2'),(143,'2021-01-31 00:03:47',3,3,'评论内容3','回复内容3'),(144,'2021-01-31 00:03:47',4,4,'评论内容4','回复内容4'),(145,'2021-01-31 00:03:47',5,5,'评论内容5','回复内容5'),(146,'2021-01-31 00:03:47',6,6,'评论内容6','回复内容6'),(1612052202957,'2021-01-31 00:16:42',24,1612052165949,'登录后可以收藏  评论  报名活动  在线预订等操作','这里查看评论  并回复');
/*!40000 ALTER TABLE `discussmeishixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussnongjiale`
--

DROP TABLE IF EXISTS `discussnongjiale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussnongjiale` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='农家乐评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussnongjiale`
--

LOCK TABLES `discussnongjiale` WRITE;
/*!40000 ALTER TABLE `discussnongjiale` DISABLE KEYS */;
INSERT INTO `discussnongjiale` VALUES (131,'2021-01-31 00:03:47',1,1,'评论内容1','回复内容1'),(132,'2021-01-31 00:03:47',2,2,'评论内容2','回复内容2'),(133,'2021-01-31 00:03:47',3,3,'评论内容3','回复内容3'),(134,'2021-01-31 00:03:47',4,4,'评论内容4','回复内容4'),(135,'2021-01-31 00:03:47',5,5,'评论内容5','回复内容5'),(136,'2021-01-31 00:03:47',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussnongjiale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszhusuxinxi`
--

DROP TABLE IF EXISTS `discusszhusuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszhusuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='住宿信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszhusuxinxi`
--

LOCK TABLES `discusszhusuxinxi` WRITE;
/*!40000 ALTER TABLE `discusszhusuxinxi` DISABLE KEYS */;
INSERT INTO `discusszhusuxinxi` VALUES (151,'2021-01-31 00:03:47',1,1,'评论内容1','回复内容1'),(152,'2021-01-31 00:03:47',2,2,'评论内容2','回复内容2'),(153,'2021-01-31 00:03:47',3,3,'评论内容3','回复内容3'),(154,'2021-01-31 00:03:47',4,4,'评论内容4','回复内容4'),(155,'2021-01-31 00:03:47',5,5,'评论内容5','回复内容5'),(156,'2021-01-31 00:03:47',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusszhusuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612052338161 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (1612052327831,'2021-01-31 00:18:47','交流在这里发帖','<p>发帖</p><p><img src=\"../../../upload/1612052326548.jpg\"></p><p><br></p><p>这里查看用户帖子  针对敏感类话题或字眼  可以修改  可以删除</p>',0,1612052165949,'666','开放'),(1612052338160,'2021-01-31 00:18:57',NULL,'这里可以评论',1612052327831,1612052165949,'666',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongbaoming`
--

DROP TABLE IF EXISTS `huodongbaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongleixing` varchar(200) DEFAULT NULL COMMENT '活动类型',
  `huodongtupian` varchar(200) DEFAULT NULL COMMENT '活动图片',
  `huodongshijian` varchar(200) DEFAULT NULL COMMENT '活动时间',
  `nongjialemingcheng` varchar(200) DEFAULT NULL COMMENT '农家乐名称',
  `baomingshijian` datetime DEFAULT NULL COMMENT '报名时间',
  `baomingrenshu` int(11) NOT NULL COMMENT '报名人数',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612052309069 DEFAULT CHARSET=utf8 COMMENT='活动报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongbaoming`
--

LOCK TABLES `huodongbaoming` WRITE;
/*!40000 ALTER TABLE `huodongbaoming` DISABLE KEYS */;
INSERT INTO `huodongbaoming` VALUES (61,'2021-01-31 00:03:46','活动名称1','活动类型1','http://localhost:8080/ssms95f7/upload/huodongbaoming_huodongtupian1.jpg','活动时间1','农家乐名称1','2021-01-31 08:03:46',1,'用户名1','姓名1','手机1','是',''),(62,'2021-01-31 00:03:46','活动名称2','活动类型2','http://localhost:8080/ssms95f7/upload/huodongbaoming_huodongtupian2.jpg','活动时间2','农家乐名称2','2021-01-31 08:03:46',2,'用户名2','姓名2','手机2','是',''),(63,'2021-01-31 00:03:46','活动名称3','活动类型3','http://localhost:8080/ssms95f7/upload/huodongbaoming_huodongtupian3.jpg','活动时间3','农家乐名称3','2021-01-31 08:03:46',3,'用户名3','姓名3','手机3','是',''),(64,'2021-01-31 00:03:46','活动名称4','活动类型4','http://localhost:8080/ssms95f7/upload/huodongbaoming_huodongtupian4.jpg','活动时间4','农家乐名称4','2021-01-31 08:03:46',4,'用户名4','姓名4','手机4','是',''),(65,'2021-01-31 00:03:46','活动名称5','活动类型5','http://localhost:8080/ssms95f7/upload/huodongbaoming_huodongtupian5.jpg','活动时间5','农家乐名称5','2021-01-31 08:03:46',5,'用户名5','姓名5','手机5','是',''),(66,'2021-01-31 00:03:46','活动名称6','活动类型6','http://localhost:8080/ssms95f7/upload/huodongbaoming_huodongtupian6.jpg','活动时间6','农家乐名称6','2021-01-31 08:03:46',6,'用户名6','姓名6','手机6','是',''),(1612052309068,'2021-01-31 00:18:28','活动名称2','活动类型2','http://localhost:8080/ssms95f7/upload/huodongxinxi_huodongtupian2.jpg','2021-01-31 08:03:46','农家乐名称2','2021-02-06 00:00:00',2,'666','小李','16459878981','是','这里审核回复用户的活动报名');
/*!40000 ALTER TABLE `huodongbaoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongxinxi`
--

DROP TABLE IF EXISTS `huodongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) NOT NULL COMMENT '活动名称',
  `huodongleixing` varchar(200) NOT NULL COMMENT '活动类型',
  `huodongtupian` varchar(200) DEFAULT NULL COMMENT '活动图片',
  `huodongshijian` datetime DEFAULT NULL COMMENT '活动时间',
  `huodongdidian` varchar(200) NOT NULL COMMENT '活动地点',
  `nongjialemingcheng` varchar(200) NOT NULL COMMENT '农家乐名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `zixundianhua` varchar(200) DEFAULT NULL COMMENT '咨询电话',
  `huodongjieshao` longtext COMMENT '活动介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='活动信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongxinxi`
--

LOCK TABLES `huodongxinxi` WRITE;
/*!40000 ALTER TABLE `huodongxinxi` DISABLE KEYS */;
INSERT INTO `huodongxinxi` VALUES (41,'2021-01-31 00:03:46','活动名称1','活动类型1','http://localhost:8080/ssms95f7/upload/huodongxinxi_huodongtupian1.jpg','2021-01-31 08:03:46','活动地点1','农家乐名称1','地址1','咨询电话1','活动介绍1'),(42,'2021-01-31 00:03:46','活动名称2','活动类型2','http://localhost:8080/ssms95f7/upload/huodongxinxi_huodongtupian2.jpg','2021-01-31 08:03:46','活动地点2','农家乐名称2','地址2','咨询电话2','活动介绍2'),(43,'2021-01-31 00:03:46','活动名称3','活动类型3','http://localhost:8080/ssms95f7/upload/huodongxinxi_huodongtupian3.jpg','2021-01-31 08:03:46','活动地点3','农家乐名称3','地址3','咨询电话3','活动介绍3'),(44,'2021-01-31 00:03:46','活动名称4','活动类型4','http://localhost:8080/ssms95f7/upload/huodongxinxi_huodongtupian4.jpg','2021-01-31 08:03:46','活动地点4','农家乐名称4','地址4','咨询电话4','活动介绍4'),(45,'2021-01-31 00:03:46','活动名称5','活动类型5','http://localhost:8080/ssms95f7/upload/huodongxinxi_huodongtupian5.jpg','2021-01-31 08:03:46','活动地点5','农家乐名称5','地址5','咨询电话5','活动介绍5'),(46,'2021-01-31 00:03:46','活动名称6','活动类型6','http://localhost:8080/ssms95f7/upload/huodongxinxi_huodongtupian6.jpg','2021-01-31 08:03:46','活动地点6','农家乐名称6','地址6','咨询电话6','活动介绍6');
/*!40000 ALTER TABLE `huodongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kefangyuding`
--

DROP TABLE IF EXISTS `kefangyuding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kefangyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kefangmingcheng` varchar(200) DEFAULT NULL COMMENT '客房名称',
  `kefangleixing` varchar(200) DEFAULT NULL COMMENT '客房类型',
  `kefangtupian` varchar(200) DEFAULT NULL COMMENT '客房图片',
  `kefangzhuangtai` varchar(200) DEFAULT NULL COMMENT '客房状态',
  `nongjialemingcheng` varchar(200) DEFAULT NULL COMMENT '农家乐名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `zixundianhua` varchar(200) DEFAULT NULL COMMENT '咨询电话',
  `kefangjiage` varchar(200) DEFAULT NULL COMMENT '客房价格',
  `ruzhutianshu` int(11) NOT NULL COMMENT '入住天数',
  `zongjiage` int(11) DEFAULT NULL COMMENT '总价格',
  `ruzhurenshu` int(11) NOT NULL COMMENT '入住人数',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `ruzhushijian` datetime DEFAULT NULL COMMENT '入住时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612052286790 DEFAULT CHARSET=utf8 COMMENT='客房预订';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kefangyuding`
--

LOCK TABLES `kefangyuding` WRITE;
/*!40000 ALTER TABLE `kefangyuding` DISABLE KEYS */;
INSERT INTO `kefangyuding` VALUES (71,'2021-01-31 00:03:46','客房名称1','客房类型1','http://localhost:8080/ssms95f7/upload/kefangyuding_kefangtupian1.jpg','客房状态1','农家乐名称1','地址1','咨询电话1','108',1,108,1,'2021-01-31 08:03:46','2021-01-31 08:03:46','备注1','用户名1','姓名1','手机1','身份证1','是','','未支付'),(72,'2021-01-31 00:03:46','客房名称2','客房类型2','http://localhost:8080/ssms95f7/upload/kefangyuding_kefangtupian2.jpg','客房状态2','农家乐名称2','地址2','咨询电话2','168',2,336,2,'2021-01-31 08:03:46','2021-01-31 08:03:46','备注2','用户名2','姓名2','手机2','身份证2','是','','未支付'),(73,'2021-01-31 00:03:46','客房名称3','客房类型3','http://localhost:8080/ssms95f7/upload/kefangyuding_kefangtupian3.jpg','客房状态3','农家乐名称3','地址3','咨询电话3','198',1,198,3,'2021-01-31 08:03:46','2021-01-31 08:03:46','备注3','用户名3','姓名3','手机3','身份证3','是','','未支付'),(74,'2021-01-31 00:03:46','客房名称4','客房类型4','http://localhost:8080/ssms95f7/upload/kefangyuding_kefangtupian4.jpg','客房状态4','农家乐名称4','地址4','咨询电话4','108',1,108,4,'2021-01-31 08:03:46','2021-01-31 08:03:46','备注4','用户名4','姓名4','手机4','身份证4','是','','未支付'),(75,'2021-01-31 00:03:46','客房名称5','客房类型5','http://localhost:8080/ssms95f7/upload/kefangyuding_kefangtupian5.jpg','客房状态5','农家乐名称5','地址5','咨询电话5','228',1,228,5,'2021-01-31 08:03:46','2021-01-31 08:03:46','备注5','用户名5','姓名5','手机5','身份证5','是','','未支付'),(76,'2021-01-31 00:03:46','客房名称6','客房类型6','http://localhost:8080/ssms95f7/upload/kefangyuding_kefangtupian6.jpg','客房状态6','农家乐名称6','地址6','咨询电话6','客房价格6',6,6,6,'2021-01-31 08:03:46','2021-01-31 08:03:46','备注6','用户名6','姓名6','手机6','身份证6','是','','未支付'),(1612052286789,'2021-01-31 00:18:06','客房名称3','大床房','http://localhost:8080/ssms95f7/upload/zhusuxinxi_kefangtupian3.jpg','可预订','农家乐名称3','地址3','咨询电话3','3',1,3,2,'2021-02-06 00:00:00','2021-02-07 00:00:00','','666','小李','16459878981','984598789865459812','是','收到订单','已支付');
/*!40000 ALTER TABLE `kefangyuding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meishixinxi`
--

DROP TABLE IF EXISTS `meishixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meishixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `kouwei` varchar(200) DEFAULT NULL COMMENT '口味',
  `tese` varchar(200) DEFAULT NULL COMMENT '特色',
  `nongjialemingcheng` varchar(200) NOT NULL COMMENT '农家乐名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `zixundianhua` varchar(200) DEFAULT NULL COMMENT '咨询电话',
  `xiangqing` longtext COMMENT '详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='美食信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meishixinxi`
--

LOCK TABLES `meishixinxi` WRITE;
/*!40000 ALTER TABLE `meishixinxi` DISABLE KEYS */;
INSERT INTO `meishixinxi` VALUES (21,'2021-01-31 00:03:46','名称1','分类1','http://localhost:8080/ssms95f7/upload/meishixinxi_tupian1.jpg','口味1','特色1','农家乐名称1','地址1','咨询电话1','详情1','2021-01-31 08:20:49',2),(22,'2021-01-31 00:03:46','名称2','分类2','http://localhost:8080/ssms95f7/upload/meishixinxi_tupian2.jpg','口味2','特色2','农家乐名称2','地址2','咨询电话2','详情2','2021-01-31 08:03:46',2),(23,'2021-01-31 00:03:46','名称3','分类3','http://localhost:8080/ssms95f7/upload/meishixinxi_tupian3.jpg','口味3','特色3','农家乐名称3','地址3','咨询电话3','详情3','2021-01-31 08:03:46',3),(24,'2021-01-31 00:03:46','名称4','分类4','http://localhost:8080/ssms95f7/upload/meishixinxi_tupian4.jpg','口味4','特色4','农家乐名称4','地址4','咨询电话4','详情4','2021-01-31 08:24:57',9),(25,'2021-01-31 00:03:46','名称5','分类5','http://localhost:8080/ssms95f7/upload/meishixinxi_tupian5.jpg','口味5','特色5','农家乐名称5','地址5','咨询电话5','详情5','2021-01-31 08:17:05',7),(26,'2021-01-31 00:03:46','名称6','分类6','http://localhost:8080/ssms95f7/upload/meishixinxi_tupian6.jpg','口味6','特色6','农家乐名称6','地址6','咨询电话6','详情6','2021-01-31 08:03:46',6);
/*!40000 ALTER TABLE `meishixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (121,'2021-01-31 00:03:47','“农家乐”的农家终于乐了','1月25日，巫山双龙镇安静村肖家冲，游客在鱼头湾农家乐用餐。（受访者供图）\n\n重庆日报消息，20余天的忙碌后，赵长华的农家乐赶在春节前终于装修完成。1月25日一大早，赵长华将一楼一底的房子里里外外收拾干净。特别是门楣上那块“鱼头湾农家乐”的招牌，他更是擦拭了好几遍。“现在，我们既能办餐饮，也能接待住宿了。”\n\n鱼头湾农家乐，地处巫山双龙镇安静村肖家冲，与大宁河鱼头湾隔河相望。','http://localhost:8080/ssms95f7/upload/news_picture1.jpg','<p class=\"ql-align-justify\">	1月25日，巫山双龙镇安静村肖家冲，游客在鱼头湾农家乐用餐。（受访者供图）</p><p class=\"ql-align-justify\">	重庆日报消息，20余天的忙碌后，赵长华的农家乐赶在春节前终于装修完成。1月25日一大早，赵长华将一楼一底的房子里里外外收拾干净。特别是门楣上那块“鱼头湾农家乐”的招牌，他更是擦拭了好几遍。“现在，我们既能办餐饮，也能接待住宿了。”</p><p class=\"ql-align-justify\">	鱼头湾农家乐，地处巫山双龙镇安静村肖家冲，与大宁河鱼头湾隔河相望。</p><p><br></p>'),(122,'2021-01-31 00:03:47','农家乐为何频频关门？经营者吐露心声，说的全是大实话','在五六年前，农家乐还是非常火爆的，前期投入农家乐的人，可谓是大赚一笔，当时的经济活力更活跃一些，人们肯花钱，周末出门旅游成为习惯，因假期不多，将目光看向城市周围的农家乐、风光农场等。','http://localhost:8080/ssms95f7/upload/news_picture2.jpg','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">在五六年前，农家乐还是非常火爆的，前期投入农家乐的人，可谓是大赚一笔，当时的经济活力更活跃一些，人们肯花钱，周末出门旅游成为习惯，因假期不多，将目光看向城市周围的农家乐、风光农场等。</span></p>'),(123,'2021-01-31 00:03:47','曾经红火的农家乐，为何会面临倒闭，看完你就明白了！','了解三农大百科，来自我们身边的农村事，大家好，我是钟思宇话三农！和你们一样关注农村事件。\n\n前两年农家乐确实红火了一阵子，由于大家的复古和抢鲜心理，农家乐碰巧顺从了一部分人的心理。乡下的土道边和景区里都有很多“农家乐”，一时间，到农家乐吃饭玩乐成了一种时尚的休闲娱乐。','http://localhost:8080/ssms95f7/upload/news_picture3.jpg','<p class=\"ql-align-justify\">了解三农大百科，来自我们身边的农村事，大家好，我是钟思宇话三农！和你们一样关注农村事件。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">前两年农家乐确实红火了一阵子，由于大家的复古和抢鲜心理，农家乐碰巧顺从了一部分人的心理。乡下的土道边和景区里都有很多“农家乐”，一时间，到农家乐吃饭玩乐成了一种时尚的休闲娱乐。</p><p><br></p>'),(124,'2021-01-31 00:03:47','10年前很火热的农家乐，为什么很少见了，是什么原因减少的','前几天，到我们的省会城市去办事情，刚好遇到20多年未见的老同学，招呼我们吃饭，就领我们到城郊一个小地方去，去到那个地方以后，才知道是一个农家小院，腾出了几间房子，摆上了几张桌子，就开启了食馆。\n\n农家小院很干净，做出来的饭菜也是地道的农家口味，很好吃，很受人的欢迎，但是这样的农家乐已经很难找了，这是为什么呢？','http://localhost:8080/ssms95f7/upload/news_picture4.jpg','<p class=\"ql-align-justify\">前几天，到我们的省会城市去办事情，刚好遇到20多年未见的老同学，招呼我们吃饭，就领我们到城郊一个小地方去，去到那个地方以后，才知道是一个农家小院，腾出了几间房子，摆上了几张桌子，就开启了食馆。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">农家小院很干净，做出来的饭菜也是地道的农家口味，很好吃，很受人的欢迎，但是这样的农家乐已经很难找了，这是为什么呢？</p><p><br></p>'),(125,'2021-01-31 00:03:47','7个不要错过的桃花源，原汁原味的景色，真实的农家乐','时代的发展，钢筋和水泥将我们的天空遮蔽，青山和绿水与我们渐渐地分道扬镳，虽然国家一直在治理环境，但是城市的集中性导致我们还是无法欣赏那原滋原味的古风之美和自然给予人类最美的东西。所以今天给大家推荐几个美丽且原滋原味的村落和小镇，让你领略你失去的留在记忆追深处的美。来找到几个生活的慰藉之处，让你放松和自由。','http://localhost:8080/ssms95f7/upload/news_picture5.jpg','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">时代的发展，钢筋和水泥将我们的天空遮蔽，青山和绿水与我们渐渐地分道扬镳，虽然国家一直在治理环境，但是城市的集中性导致我们还是无法欣赏那原滋原味的古风之美和自然给予人类最美的东西。所以今天给大家推荐几个美丽且原滋原味的村落和小镇，让你领略你失去的留在记忆追深处的美。来找到几个生活的慰藉之处，让你放松和自由。</span></p>'),(126,'2021-01-31 00:03:47','苏州周边农家乐旅游：孙武文化园','穹窿山孙武文化园是以孙武军事文化为主题建造的一座园区，气势磅礴的门楼，结合城墙的延伸，彰显出兵法文化的大气雄浑。','http://localhost:8080/ssms95f7/upload/news_picture6.jpg','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">穹窿山孙武文化园是以孙武军事文化为主题建造的一座园区，气势磅礴的门楼，结合城墙的延伸，彰显出兵法文化的大气雄浑。</span></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nongjiale`
--

DROP TABLE IF EXISTS `nongjiale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nongjiale` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `nongjialemingcheng` varchar(200) NOT NULL COMMENT '农家乐名称',
  `leibie` varchar(200) NOT NULL COMMENT '类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `jingyingfanwei` varchar(200) DEFAULT NULL COMMENT '经营范围',
  `zixundianhua` varchar(200) DEFAULT NULL COMMENT '咨询电话',
  `tesejieshao` longtext COMMENT '特色介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='农家乐';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nongjiale`
--

LOCK TABLES `nongjiale` WRITE;
/*!40000 ALTER TABLE `nongjiale` DISABLE KEYS */;
INSERT INTO `nongjiale` VALUES (11,'2021-01-31 00:03:46','农家乐名称1','类别1','http://localhost:8080/ssms95f7/upload/nongjiale_tupian1.jpg','地址1','经营范围1','13823888881','特色介绍1'),(12,'2021-01-31 00:03:46','农家乐名称2','类别2','http://localhost:8080/ssms95f7/upload/nongjiale_tupian2.jpg','地址2','经营范围2','13823888882','特色介绍2'),(13,'2021-01-31 00:03:46','农家乐名称3','类别3','http://localhost:8080/ssms95f7/upload/nongjiale_tupian3.jpg','地址3','经营范围3','13823888883','特色介绍3'),(14,'2021-01-31 00:03:46','农家乐名称4','类别4','http://localhost:8080/ssms95f7/upload/nongjiale_tupian4.jpg','地址4','经营范围4','13823888884','特色介绍4'),(15,'2021-01-31 00:03:46','农家乐名称5','类别5','http://localhost:8080/ssms95f7/upload/nongjiale_tupian5.jpg','地址5','经营范围5','13823888885','特色介绍5'),(16,'2021-01-31 00:03:46','农家乐名称6','类别6','http://localhost:8080/ssms95f7/upload/nongjiale_tupian6.jpg','地址6','经营范围6','13823888886','特色介绍6');
/*!40000 ALTER TABLE `nongjiale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612052236787 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1612052236786,'2021-01-31 00:17:15',1612052165949,11,'nongjiale','农家乐名称1','http://localhost:8080/ssms95f7/upload/nongjiale_tupian1.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,51,'用户1','yonghu','用户','8jplmzilni85xe2rqdb2iv62kv3qbne6','2021-01-31 00:09:33','2021-01-31 01:15:02'),(2,1,'abo','users','管理员','qb98djgzsduanv9spgggntg8anz3e1yp','2021-01-31 00:10:03','2021-01-31 01:25:58'),(3,1612052165949,'666','yonghu','用户','j5k1dt5qkhudl47jqmhf1tvomh5nehvx','2021-01-31 00:16:10','2021-01-31 01:27:05');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-31 00:03:47'),(2,'000','000','管理员','2021-01-31 00:23:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1612052165950 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (51,'2021-01-31 00:03:46','用户1','123456','姓名1','男','http://localhost:8080/ssms95f7/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com','440300199101010001'),(52,'2021-01-31 00:03:46','用户2','123456','姓名2','男','http://localhost:8080/ssms95f7/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com','440300199202020002'),(53,'2021-01-31 00:03:46','用户3','123456','姓名3','男','http://localhost:8080/ssms95f7/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com','440300199303030003'),(54,'2021-01-31 00:03:46','用户4','123456','姓名4','男','http://localhost:8080/ssms95f7/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com','440300199404040004'),(55,'2021-01-31 00:03:46','用户5','123456','姓名5','男','http://localhost:8080/ssms95f7/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com','440300199505050005'),(56,'2021-01-31 00:03:46','用户6','123456','姓名6','男','http://localhost:8080/ssms95f7/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com','440300199606060006'),(1612052165949,'2021-01-31 00:16:05','666','666','小李','男','http://localhost:8080/ssms95f7/upload/1612052177636.jpg','16459878984','132@123.com','984598789865459812');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghupingjia`
--

DROP TABLE IF EXISTS `yonghupingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghupingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kefangmingcheng` varchar(200) DEFAULT NULL COMMENT '客房名称',
  `nongjialemingcheng` varchar(200) DEFAULT NULL COMMENT '农家乐名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `zixundianhua` varchar(200) DEFAULT NULL COMMENT '咨询电话',
  `huanjingpingfen` varchar(200) NOT NULL COMMENT '环境评分',
  `fuwupingfen` varchar(200) NOT NULL COMMENT '服务评分',
  `zhusupingfen` varchar(200) NOT NULL COMMENT '住宿评分',
  `meishipingfen` varchar(200) NOT NULL COMMENT '美食评分',
  `yonghupingjia` longtext NOT NULL COMMENT '用户评价',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612052742405 DEFAULT CHARSET=utf8 COMMENT='用户评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghupingjia`
--

LOCK TABLES `yonghupingjia` WRITE;
/*!40000 ALTER TABLE `yonghupingjia` DISABLE KEYS */;
INSERT INTO `yonghupingjia` VALUES (81,'2021-01-31 00:03:47','客房名称1','农家乐名称1','地址1','咨询电话1','1','1','1','1','用户评价1','用户名1','手机1','是',''),(82,'2021-01-31 00:03:47','客房名称2','农家乐名称2','地址2','咨询电话2','1','1','1','1','用户评价2','用户名2','手机2','是',''),(83,'2021-01-31 00:03:47','客房名称3','农家乐名称3','地址3','咨询电话3','1','1','1','1','用户评价3','用户名3','手机3','是',''),(84,'2021-01-31 00:03:47','客房名称4','农家乐名称4','地址4','咨询电话4','1','1','1','1','用户评价4','用户名4','手机4','是',''),(85,'2021-01-31 00:03:47','客房名称5','农家乐名称5','地址5','咨询电话5','1','1','1','1','用户评价5','用户名5','手机5','是',''),(86,'2021-01-31 00:03:47','客房名称6','农家乐名称6','地址6','咨询电话6','1','1','1','1','用户评价6','用户名6','手机6','是',''),(1612052742404,'2021-01-31 00:25:41','客房名称3','农家乐名称3','地址3','咨询电话3','4','4','5','4','<p>这里进行评分  这里也可以插入图片  <img src=\"http://localhost:8080/ssms95f7/upload/1612052740068.png\"></p>','666','16459878981','是','收到评价  谢谢');
/*!40000 ALTER TABLE `yonghupingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhusuxinxi`
--

DROP TABLE IF EXISTS `zhusuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhusuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kefangmingcheng` varchar(200) NOT NULL COMMENT '客房名称',
  `kefangleixing` varchar(200) NOT NULL COMMENT '客房类型',
  `kefangtupian` varchar(200) DEFAULT NULL COMMENT '客房图片',
  `kefangsheshi` varchar(200) DEFAULT NULL COMMENT '客房设施',
  `kefangjiage` int(11) NOT NULL COMMENT '客房价格',
  `kefangzhuangtai` varchar(200) DEFAULT NULL COMMENT '客房状态',
  `nongjialemingcheng` varchar(200) DEFAULT NULL COMMENT '农家乐名称',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `zixundianhua` varchar(200) DEFAULT NULL COMMENT '咨询电话',
  `kefangjieshao` longtext COMMENT '客房介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612052514575 DEFAULT CHARSET=utf8 COMMENT='住宿信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhusuxinxi`
--

LOCK TABLES `zhusuxinxi` WRITE;
/*!40000 ALTER TABLE `zhusuxinxi` DISABLE KEYS */;
INSERT INTO `zhusuxinxi` VALUES (31,'2021-01-31 00:03:46','客房名称1','大床房','http://localhost:8080/ssms95f7/upload/zhusuxinxi_kefangtupian1.jpg','客房设施1',198,'已预订','农家乐名称1','类别1','地址1','咨询电话1','<p>客房介绍1</p>'),(32,'2021-01-31 00:03:46','客房名称2','双人房','http://localhost:8080/ssms95f7/upload/zhusuxinxi_kefangtupian2.jpg','客房设施2',2,'已预订','农家乐名称2','类别2','地址2','咨询电话2','<p>客房介绍2</p>'),(33,'2021-01-31 00:03:46','客房名称3','大床房','http://localhost:8080/ssms95f7/upload/zhusuxinxi_kefangtupian3.jpg','客房设施3',3,'可预订','农家乐名称3','类别3','地址3','咨询电话3','客房介绍3'),(34,'2021-01-31 00:03:46','客房名称4','大床房','http://localhost:8080/ssms95f7/upload/zhusuxinxi_kefangtupian4.jpg','客房设施4',4,'可预订','农家乐名称4','类别4','地址4','咨询电话4','客房介绍4'),(35,'2021-01-31 00:03:46','客房名称5','大床房','http://localhost:8080/ssms95f7/upload/zhusuxinxi_kefangtupian5.jpg','客房设施5',5,'可预订','农家乐名称5','类别5','地址5','咨询电话5','客房介绍5'),(36,'2021-01-31 00:03:46','客房名称6','大床房','http://localhost:8080/ssms95f7/upload/zhusuxinxi_kefangtupian6.jpg','客房设施6',6,'可预订','农家乐名称6','类别6','地址6','咨询电话6','客房介绍6'),(1612052514574,'2021-01-31 00:21:54','这里添加客房信息','双人房','http://localhost:8080/ssms95f7/upload/1612052510338.jpg','111',198,'可预订','农家乐名称5','类别5','地址5','13823888885','<p><img src=\"http://localhost:8080/ssms95f7/upload/1612052500730.jpg\"></p>');
/*!40000 ALTER TABLE `zhusuxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-31 10:59:27
