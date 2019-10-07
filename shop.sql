/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 18/07/2019 15:52:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
BEGIN;
INSERT INTO `admin_menu` VALUES (1, 0, 1, 'Index', 'fa-bar-chart', '/', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 2, 'admin', 'fa-tasks', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (3, 2, 3, 'users', 'fa-users', 'auth/users', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (4, 2, 4, 'roles', 'fa-user', 'auth/roles', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (5, 2, 5, 'permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (6, 2, 6, 'menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (7, 2, 7, 'operation_log', 'fa-history', 'auth/logs', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (8, 31, 23, 'customer_manager', 'fa-user-md', 'shop_customer', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (9, 25, 18, 'orders_manager', 'fa-shopping-cart', 'shop_order', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (10, 15, 11, 'all_products', 'fa-file-photo-o', 'shop_product', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (11, 15, 13, 'brands', 'fa-bank', 'shop_brand', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (13, 15, 10, 'categories', 'fa-folder-open-o', 'shop_category', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (14, 15, 12, 'special_price', 'fa-paw', 'special_price', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (15, 0, 9, 'product_mamager', 'fa-folder-open', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (18, 23, 43, 'config_info', 'fa-cog', 'config_info', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (22, 0, 8, 'pages', 'fa-clone', 'shop_page', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (23, 0, 42, 'settings', 'fa-cogs', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (24, 62, 38, 'banners_manager', 'fa-simplybuilt', 'banner', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (25, 0, 17, 'order_manager', 'fa-cart-arrow-down', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (26, 25, 19, 'order_status', 'fa-asterisk', 'shop_order_status', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (27, 25, 20, 'payment_status', 'fa-recycle', 'shop_payment_status', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (28, 25, 21, 'shipping_status', 'fa-ambulance', 'shop_shipping_status', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (30, 0, 25, 'extensions', 'fa-puzzle-piece', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (31, 0, 22, 'customer_manager', 'fa-group', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (51, 23, 44, 'config_global', 'fa-cogs', 'config_global', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (52, 56, 49, 'config_language', 'fa-pagelines', 'language', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (53, 101, 34, 'design_layout', 'fa-newspaper-o', 'layout', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (56, 23, 48, 'localisation', 'fa-shirtsinbulk', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (57, 15, 14, 'vendor', 'fa-user-secret', 'shop_vendor', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (58, 0, 52, 'report_analytics', 'fa-pie-chart', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (59, 58, 53, 'customer_report', 'fa-bars', 'shop_report/customer', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (60, 58, 54, 'product_report', 'fa-bars', 'shop_report/product', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (61, 15, 15, 'import_product', 'fa-save', 'shop_process/productImport', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (62, 0, 37, 'file_manager', 'fa-image', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (63, 62, 39, 'images_manager', 'fa-file-image-o', 'documents', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (64, 56, 50, 'currencies', 'fa-dollar', 'currencies', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (65, 0, 40, 'api_manager', 'fa-plug', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (66, 65, 41, 'shop_api', 'fa-usb', 'modules/api/shop_api', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (70, 15, 16, 'attributes_group', 'fa-bars', 'shop_attribute_group', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (71, 30, 26, 'payment', 'fa-money', 'extensions/payment', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (72, 30, 27, 'shipping', 'fa-ambulance', 'extensions/shipping', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (73, 30, 28, 'total', 'fa-cog', 'extensions/total', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (74, 30, 29, 'other_extension', 'fa-circle-thin', 'extensions/other', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (75, 0, 30, 'modules', 'fa-codepen', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (76, 75, 31, 'cms', 'fa-modx', 'modules/cms', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (81, 101, 36, 'templates_manager', 'fa-columns', 'config_template', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (82, 23, 51, 'backup_restore', 'fa-save', 'backup_database', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (83, 21, 34, 'subscribe_manager', 'fa-user-md', 'subscribe', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (101, 0, 33, 'template_layout', 'fa-object-ungroup', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (102, 75, 32, 'other_module', 'fa-bars', 'modules/other', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (105, 101, 35, 'url', 'fa-chrome', 'layout_url', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (108, 23, 45, 'email_setting', 'fa-envelope', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (109, 108, 46, 'email_config', 'fa-gear', 'email_config', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (110, 108, 47, 'email_template', 'fa-bars', 'email_template', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (111, 0, 55, 'Helpers', 'fa-gears', '', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (112, 111, 56, 'Scaffold', 'fa-keyboard-o', 'helpers/scaffold', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (113, 111, 57, 'Database terminal', 'fa-database', 'helpers/terminal/database', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (114, 111, 58, 'Laravel artisan', 'fa-terminal', 'helpers/terminal/artisan', NULL, NULL, NULL);
INSERT INTO `admin_menu` VALUES (115, 111, 59, 'Routes', 'fa-list-alt', 'helpers/routes', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
BEGIN;
INSERT INTO `admin_operation_log` VALUES (1, 1, 'system_admin', 'GET', '127.0.0.1', '[]', '2019-07-18 15:23:44', '2019-07-18 15:23:44');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'system_admin', 'GET', '127.0.0.1', '[]', '2019-07-18 15:23:57', '2019-07-18 15:23:57');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'system_admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-18 15:24:40', '2019-07-18 15:24:40');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'system_admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2019-07-18 15:24:47', '2019-07-18 15:24:47');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'system_admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-07-18 15:25:17', '2019-07-18 15:25:17');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'system_admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$JcmAHe5eUZ2rS0jU1GWr\\/.xhwCnh2RU13qwjTPcqfmtZXjZxcryPO\",\"password_confirmation\":\"$2y$10$JcmAHe5eUZ2rS0jU1GWr\\/.xhwCnh2RU13qwjTPcqfmtZXjZxcryPO\",\"_token\":\"Nf03Ed0xAYKbfrZPYTibNLETx5Mz690mBEz39hKz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/system_admin\\/auth\\/users\\/create\"}', '2019-07-18 15:26:22', '2019-07-18 15:26:22');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'system_admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-07-18 15:26:22', '2019-07-18 15:26:22');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'system_admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-07-18 15:27:43', '2019-07-18 15:27:43');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'system_admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-07-18 15:27:45', '2019-07-18 15:27:45');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'system_admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-07-18 15:28:45', '2019-07-18 15:28:45');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'system_admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$JcmAHe5eUZ2rS0jU1GWr\\/.xhwCnh2RU13qwjTPcqfmtZXjZxcryPO\",\"password_confirmation\":\"$2y$10$JcmAHe5eUZ2rS0jU1GWr\\/.xhwCnh2RU13qwjTPcqfmtZXjZxcryPO\",\"_token\":\"Nf03Ed0xAYKbfrZPYTibNLETx5Mz690mBEz39hKz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/system_admin\\/auth\\/users\\/create\"}', '2019-07-18 15:29:46', '2019-07-18 15:29:46');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'system_admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-07-18 15:29:46', '2019-07-18 15:29:46');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'system_admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-07-18 15:30:22', '2019-07-18 15:30:22');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'system_admin', 'GET', '127.0.0.1', '[]', '2019-07-18 15:30:38', '2019-07-18 15:30:38');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'system_admin', 'GET', '127.0.0.1', '[]', '2019-07-18 15:33:36', '2019-07-18 15:33:36');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'system_admin', 'GET', '127.0.0.1', '[]', '2019-07-18 15:34:19', '2019-07-18 15:34:19');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'system_admin', 'GET', '127.0.0.1', '[]', '2019-07-18 15:36:39', '2019-07-18 15:36:39');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'system_admin', 'GET', '127.0.0.1', '[]', '2019-07-18 15:36:48', '2019-07-18 15:36:48');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'system_admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-07-18 15:36:56', '2019-07-18 15:36:56');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'system_admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-07-18 15:37:07', '2019-07-18 15:37:07');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'system_admin/shop_customer', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-18 15:42:57', '2019-07-18 15:42:57');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'system_admin/modules/cms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-07-18 15:43:02', '2019-07-18 15:43:02');
COMMIT;

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
BEGIN;
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT,DELETE', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\n/auth/permissions\n/auth/menu\n/auth/logs', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (6, 'System manager', 'system.mamanger', '', '/config_info*\n/config_global*\n/language*\n/currencies*\n/backup_database*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (7, 'API manager', 'api.manager', '', '/modules/api/*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (8, 'Template & Layout', 'template.layout', '', '/layout*\n/config_template*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (9, 'Email setting', 'email.setting', '', '/email_*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (10, 'View all', 'view.all', 'GET', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (11, 'CMS manager', 'cms.manager', '', '/modules/cms/*\n/shop_page*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (12, 'Product manager', 'product.manager', '', '/shop_category*\n/shop_product*\n/shop_special_price*\n/shop_brand*\n/shop_vendor*\n/shop_attribute_group*\n/shop_process*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (13, 'Admin helpers', 'ext.helpers', '', '/helpers/*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (14, 'Report shop', 'report.shop', 'GET', '/shop_report/*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (15, 'File manager', 'file.manager', '', '/banner/*\n/documents/*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (16, 'Order Manager', 'order.manager', '', '/shop_order*\n/shop_payment_status*\n/shop_shipping_status*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (17, 'Customer manager', 'customer.manager', '', '/shop_customer*\n/subscribe*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (18, 'Extensions Manager', 'extensions.manager', '', '/extensions*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (19, 'User manager', 'user.manager', '', '/auth/users*', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
BEGIN;
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 2, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 3, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 4, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (4, 4, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (4, 3, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (3, 10, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 6, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 7, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 8, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 9, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 11, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 12, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 13, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 14, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 15, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 16, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 17, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 18, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 19, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (4, 11, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (5, 2, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (5, 3, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (5, 12, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (5, 14, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (5, 16, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (5, 17, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (6, 2, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (6, 3, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (6, 4, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (6, 8, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (6, 9, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (6, 11, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (6, 12, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (6, 14, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (6, 15, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (6, 16, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (6, 17, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (4, 15, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (5, 15, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
BEGIN;
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
BEGIN;
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', NULL, NULL);
INSERT INTO `admin_roles` VALUES (2, 'Admin', 'admin', NULL, NULL);
INSERT INTO `admin_roles` VALUES (3, 'Group only View', 'views', NULL, NULL);
INSERT INTO `admin_roles` VALUES (4, 'Cms manager', 'cms', NULL, NULL);
INSERT INTO `admin_roles` VALUES (5, 'Sales', 'sale', NULL, NULL);
INSERT INTO `admin_roles` VALUES (6, 'Marketing', 'maketing', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
BEGIN;
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$JcmAHe5eUZ2rS0jU1GWr/.xhwCnh2RU13qwjTPcqfmtZXjZxcryPO', 'Administrator', 'images/avatar.jpg', NULL, NULL, '2019-07-18 15:29:46');
COMMIT;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `click` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of banner
-- ----------------------------
BEGIN;
INSERT INTO `banner` VALUES (1, 'banner/6122cfae7fdb5fff1a4e7406dcab10ef.jpg', NULL, '<h1>S-CART</h1><h2>Free E-Commerce Template</h2><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p><button type=\"button\" class=\"btn btn-default get\">Get it now</button>', 1, 0, 0, 1, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `detail` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `config_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of config
-- ----------------------------
BEGIN;
INSERT INTO `config` VALUES (1, '', 'config', 'shop_allow_guest', '1', 11, 'language.admin.shop_allow_guest');
INSERT INTO `config` VALUES (2, '', 'config', 'product_preorder', '1', 18, 'language.admin.product_preorder');
INSERT INTO `config` VALUES (3, '', 'config', 'product_display_out_of_stock', '1', 19, 'language.admin.product_display_out_of_stock');
INSERT INTO `config` VALUES (4, '', 'config', 'product_buy_out_of_stock', '1', 20, 'language.admin.product_buy_out_of_stock');
INSERT INTO `config` VALUES (5, '', 'config', 'show_date_available', '1', 21, 'language.admin.show_date_available');
INSERT INTO `config` VALUES (6, '', 'config', 'site_ssl', '0', 0, 'language.admin.enable_https');
INSERT INTO `config` VALUES (7, '', 'config', 'watermark', '1', 0, 'language.admin.enable_watermark');
INSERT INTO `config` VALUES (8, '', 'config', 'site_status', '1', 100, 'language.admin.site_status');
INSERT INTO `config` VALUES (9, '', 'config', 'show_product_of_category_children', '1', 21, 'language.admin.show_product_of_category_children');
INSERT INTO `config` VALUES (10, '', 'config', 'admin_log', '1', 20, 'language.admin.admin_log');
INSERT INTO `config` VALUES (11, '', 'display', 'product_hot', '6', 0, 'language.admin.hot_product');
INSERT INTO `config` VALUES (12, '', 'display', 'product_new', '6', 0, 'languagelanguage.admin.new_product');
INSERT INTO `config` VALUES (13, '', 'display', 'product_list', '18', 0, 'language.admin.list_product');
INSERT INTO `config` VALUES (14, '', 'display', 'product_relation', '4', 0, 'language.admin.relation_product');
INSERT INTO `config` VALUES (15, '', 'display', 'product_viewed', '4', 0, 'language.admin.viewed_product');
INSERT INTO `config` VALUES (16, '', 'display', 'item_list', '12', 0, 'language.admin.item_list');
INSERT INTO `config` VALUES (17, '', 'email_action', 'email_action_mode', '0', 0, 'language.admin.email_action.email_action_mode');
INSERT INTO `config` VALUES (18, '', 'email_action', 'order_success_to_admin', '0', 1, 'language.admin.email_action.order_success_to_admin');
INSERT INTO `config` VALUES (19, '', 'email_action', 'order_success_to_customer', '0', 2, 'language.admin.email_action.order_success_to_cutomer');
INSERT INTO `config` VALUES (20, '', 'email_action', 'forgot_password', '0', 3, 'language.admin.email_action.forgot_password');
INSERT INTO `config` VALUES (21, '', 'email_action', 'welcome_customer', '0', 4, 'language.admin.email_action.welcome_customer');
INSERT INTO `config` VALUES (22, '', 'email_action', 'contact_to_admin', '0', 6, 'language.admin.email_action.contact_to_admin');
INSERT INTO `config` VALUES (23, '', 'email_action', 'email_action_smtp_mode', '0', 6, 'language.admin.email_action.email_action_smtp_mode');
INSERT INTO `config` VALUES (24, 'Modules', 'Other', 'LastViewProduct', '1', 0, 'Modules/Other/LastViewProduct.title');
INSERT INTO `config` VALUES (25, 'Extensions', 'Payment', 'Cash', '1', 0, 'Extensions/Payment/Cash.title');
INSERT INTO `config` VALUES (26, 'Extensions', 'Shipping', 'ShippingStandard', '1', 0, 'Shipping Standard');
INSERT INTO `config` VALUES (27, '', 'smtp', 'smtp_host', '', 8, 'language.admin.smtp_host');
INSERT INTO `config` VALUES (28, '', 'smtp', 'smtp_user', '', 7, 'language.admin.smtp_user');
INSERT INTO `config` VALUES (29, '', 'smtp', 'smtp_password', '', 6, 'language.admin.smtp_password');
INSERT INTO `config` VALUES (30, '', 'smtp', 'smtp_security', '', 5, 'language.admin.smtp_security');
INSERT INTO `config` VALUES (31, '', 'smtp', 'smtp_port', '', 4, 'language.admin.smtp_port');
INSERT INTO `config` VALUES (32, 'Extensions', 'Total', 'Discount', '1', 0, 'Extensions/Total/Discount.title');
COMMIT;

-- ----------------------------
-- Table structure for config_global
-- ----------------------------
DROP TABLE IF EXISTS `config_global`;
CREATE TABLE `config_global` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `watermark` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_active` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintain_content` text COLLATE utf8mb4_unicode_ci,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of config_global
-- ----------------------------
BEGIN;
INSERT INTO `config_global` VALUES (1, 'images/scart-mid.png', 'images/watermark.png', 'default', '0123456789', 'Support: 0987654321', 'admin@gmail.com', '', '123st - abc - xyz', 'en', 'Asia/Ho_Chi_Minh', '<center><img src=\"/images/maintenance.png\" />\n<h3><span style=\"color:#e74c3c;\"><strong>Sorry! We are currently doing site maintenance!</strong></span></h3>\n</center>', 'USD');
COMMIT;

-- ----------------------------
-- Table structure for config_global_description
-- ----------------------------
DROP TABLE IF EXISTS `config_global_description`;
CREATE TABLE `config_global_description` (
  `config_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `title` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `config_global_description_config_id_lang_id_unique` (`config_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of config_global_description
-- ----------------------------
BEGIN;
INSERT INTO `config_global_description` VALUES (1, 1, 'Demo S-cart: Free open source - eCommerce Platform for Business', 'Free website shopping cart for business', '');
INSERT INTO `config_global_description` VALUES (1, 2, 'Demo S-cart: xây dựng website bán hàng miễn phí cho doanh nghiệp', 'Free website shopping cart for business', '');
COMMIT;

-- ----------------------------
-- Table structure for email_template
-- ----------------------------
DROP TABLE IF EXISTS `email_template`;
CREATE TABLE `email_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of email_template
-- ----------------------------
BEGIN;
INSERT INTO `email_template` VALUES (1, 'Reset password', 'forgot_password', '<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:left\">{{$title}}</h1>\n<p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">{{$text1}}</p>\n                    <table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%\">\n                      <tbody><tr>\n                        <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                          <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                            <tbody><tr>\n                              <td align=\"center\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                                <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                                  <tbody><tr>\n                                    <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                                      <a href=\"{{$reset_link}}\" class=\"button button-primary\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1\" target=\"_blank\">{{$reset_button}}</a>\n                                    </td>\n                                  </tr>\n                                </tbody>\n                              </table>\n                              </td>\n                            </tr>\n                          </tbody>\n                        </table>\n                        </td>\n                      </tr>\n                    </tbody>\n                  </table>\n                    <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left\">\n                      {{$text2}}\n                    </p>\n                    <table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px\">\n                    <tbody><tr>\n                      <td style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box\">\n                        <p style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px\">{{$text3}}: <a href=\"{{$reset_link}}\" style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#3869d4\" target=\"_blank\">{{$reset_link}}</a></p>\n                          </td>\n                        </tr>\n                      </tbody>\n                    </table>', 1);
INSERT INTO `email_template` VALUES (2, 'Welcome new customer', 'welcome_customer', '<h1 style=\"font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#2f3133;font-size:19px;font-weight:bold;margin-top:0;text-align:center\">{{$title}}</h1>\n<p style=\"text-align:center;\">Welcome to my site!</p>', 1);
INSERT INTO `email_template` VALUES (3, 'Send form contact to admin', 'contact_to_admin', '<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td>\n            <b>Name</b>: {{$name}}<br>\n            <b>Email</b>: {{$email}}<br>\n            <b>Phone</b>: {{$phone}}<br>\n        </td>\n    </tr>\n</table>\n<hr>\n<p style=\"text-align: center;\">Content:<br>\n<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n    <tr>\n        <td>{{$content}}</td>\n    </tr>\n</table>', 1);
INSERT INTO `email_template` VALUES (4, 'New order to admin', 'order_success_to_admin', '<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                        <tr>\n                            <td>\n                                <b>Order ID</b>: {{$orderID}}<br>\n                                <b>Customer name</b>: {{$toname}}<br>\n                                <b>Email</b>: {{$email}}<br>\n                                <b>Address</b>: {{$address}}<br>\n                                <b>Phone</b>: {{$phone}}<br>\n                                <b>Order note</b>: {{$comment}}\n                            </td>\n                        </tr>\n                    </table>\n                    <hr>\n                    <p style=\"text-align: center;\">Order detail:<br>\n                    ===================================<br></p>\n                    <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n                        {{$orderDetail}}\n                        <tr>\n                            <td colspan=\"2\"></td>\n                            <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n                            <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n                        </tr>\n                        <tr>\n                            <td colspan=\"2\"></td>\n                            <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n                            <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n                        </tr>\n                        <tr>\n                            <td colspan=\"2\"></td>\n                            <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n                            <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n                        </tr>\n                        <tr>\n                            <td colspan=\"2\"></td>\n                            <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n                            <td colspan=\"2\" align=\"right\">{{$total}}</td>\n                        </tr>\n                    </table>', 1);
INSERT INTO `email_template` VALUES (5, 'New order to customr', 'order_success_to_customer', '<table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                        <tr>\n                            <td>\n                                <b>Order ID</b>: {{$orderID}}<br>\n                                <b>Customer name</b>: {{$toname}}<br>\n                                <b>Address</b>: {{$address}}<br>\n                                <b>Phone</b>: {{$phone}}<br>\n                                <b>Order note</b>: {{$comment}}\n                            </td>\n                        </tr>\n                    </table>\n                    <hr>\n                    <p style=\"text-align: center;\">Order detail:<br>\n                    ===================================<br></p>\n                    <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\">\n                        {{$orderDetail}}\n                        <tr>\n                            <td colspan=\"2\"></td>\n                            <td colspan=\"2\" style=\"font-weight: bold;\">Sub total</td>\n                            <td colspan=\"2\" align=\"right\">{{$subtotal}}</td>\n                        </tr>\n                        <tr>\n                            <td colspan=\"2\"></td>\n                            <td colspan=\"2\" style=\"font-weight: bold;\">Shipping fee</td>\n                            <td colspan=\"2\" align=\"right\">{{$shipping}}</td>\n                        </tr>\n                        <tr>\n                            <td colspan=\"2\"></td>\n                            <td colspan=\"2\" style=\"font-weight: bold;\">Discount</td>\n                            <td colspan=\"2\" align=\"right\">{{$discount}}</td>\n                        </tr>\n                        <tr>\n                            <td colspan=\"2\"></td>\n                            <td colspan=\"2\" style=\"font-weight: bold;\">Total</td>\n                            <td colspan=\"2\" align=\"right\">{{$total}}</td>\n                        </tr>\n                    </table>', 1);
COMMIT;

-- ----------------------------
-- Table structure for language
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `language_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of language
-- ----------------------------
BEGIN;
INSERT INTO `language` VALUES (1, 'English', 'en', 'language/flag_uk.png', 1, 1);
INSERT INTO `language` VALUES (2, 'Tiếng Việt', 'vi', 'language/flag_vn.png', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for layout
-- ----------------------------
DROP TABLE IF EXISTS `layout`;
CREATE TABLE `layout` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of layout
-- ----------------------------
BEGIN;
INSERT INTO `layout` VALUES (1, 'Facebook code', 'top', '', 'html', '<div id=\"fb-root\"></div>\n<script>(function(d, s, id) {\n  var js, fjs = d.getElementsByTagName(s)[0];\n  if (d.getElementById(id)) return;\n  js = d.createElement(s); js.id = id;\n  js.src = \'//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=934208239994473\';\n  fjs.parentNode.insertBefore(js, fjs);\n}(document, \'script\', \'facebook-jssdk\'));\n</script>', 1, 0);
INSERT INTO `layout` VALUES (2, 'Google Analytics', 'header', '', 'html', '<!-- Global site tag (gtag.js) - Google Analytics -->\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-128658138-1\"></script>\n<script>\n  window.dataLayer = window.dataLayer || [];\n  function gtag(){dataLayer.push(arguments);}\n  gtag(\'js\', new Date());\n  gtag(\'config\', \'UA-128658138-1\');\n</script>', 1, 0);
INSERT INTO `layout` VALUES (3, 'Product special', 'left', 'home,product_list', 'view', 'product_special', 1, 1);
INSERT INTO `layout` VALUES (4, 'Brands', 'left', 'home,item_list', 'view', 'brands_left', 1, 3);
INSERT INTO `layout` VALUES (5, 'Banner home', 'banner_top', 'home', 'view', 'banner_image', 1, 0);
INSERT INTO `layout` VALUES (6, 'Categories', 'left', 'home,product_list,product_detail,shop_wishlist', 'view', 'categories', 1, 4);
INSERT INTO `layout` VALUES (7, 'Product last view', 'left', '', 'module', '\\App\\Modules\\Other\\Controllers\\LastViewProduct', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for layout_page
-- ----------------------------
DROP TABLE IF EXISTS `layout_page`;
CREATE TABLE `layout_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniquekey` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `layout_page_uniquekey_unique` (`uniquekey`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of layout_page
-- ----------------------------
BEGIN;
INSERT INTO `layout_page` VALUES (1, 'home', 'Home page');
INSERT INTO `layout_page` VALUES (2, 'product_list', 'Product list');
INSERT INTO `layout_page` VALUES (3, 'product_detail', 'Product detail');
INSERT INTO `layout_page` VALUES (4, 'shop_cart', 'Shop cart');
INSERT INTO `layout_page` VALUES (5, 'shop_account', 'Account');
INSERT INTO `layout_page` VALUES (6, 'shop_profile', 'Profile');
INSERT INTO `layout_page` VALUES (7, 'shop_compare', 'Compare page');
INSERT INTO `layout_page` VALUES (8, 'shop_wishlist', 'Wishlist page');
INSERT INTO `layout_page` VALUES (9, 'item_list', 'Item list');
COMMIT;

-- ----------------------------
-- Table structure for layout_position
-- ----------------------------
DROP TABLE IF EXISTS `layout_position`;
CREATE TABLE `layout_position` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniquekey` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `layout_position_uniquekey_unique` (`uniquekey`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of layout_position
-- ----------------------------
BEGIN;
INSERT INTO `layout_position` VALUES (1, 'meta', 'Meta');
INSERT INTO `layout_position` VALUES (2, 'header', 'Header');
INSERT INTO `layout_position` VALUES (3, 'top', 'Top');
INSERT INTO `layout_position` VALUES (4, 'bottom', 'Bottom');
INSERT INTO `layout_position` VALUES (5, 'footer', 'Footer');
INSERT INTO `layout_position` VALUES (6, 'left', 'Column left');
INSERT INTO `layout_position` VALUES (7, 'right', 'Column right');
INSERT INTO `layout_position` VALUES (8, 'banner_top', 'Banner top');
COMMIT;

-- ----------------------------
-- Table structure for layout_type
-- ----------------------------
DROP TABLE IF EXISTS `layout_type`;
CREATE TABLE `layout_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniquekey` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `layout_type_uniquekey_unique` (`uniquekey`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of layout_type
-- ----------------------------
BEGIN;
INSERT INTO `layout_type` VALUES (1, 'html', 'Html');
INSERT INTO `layout_type` VALUES (2, 'view', 'View');
INSERT INTO `layout_type` VALUES (3, 'module', 'Module');
COMMIT;

-- ----------------------------
-- Table structure for layout_url
-- ----------------------------
DROP TABLE IF EXISTS `layout_url`;
CREATE TABLE `layout_url` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of layout_url
-- ----------------------------
BEGIN;
INSERT INTO `layout_url` VALUES (1, 'language.contact', '/contact.html', '_self', 'menu', '', 1, 3);
INSERT INTO `layout_url` VALUES (2, 'language.about', '/about.html', '_self', 'menu', '', 1, 4);
INSERT INTO `layout_url` VALUES (3, 'S-Cart', 'https://s-cart.org', '_blank', 'menu', '', 1, 0);
INSERT INTO `layout_url` VALUES (4, 'language.my_profile', '/member/login.html', '_self', 'footer', '', 1, 5);
INSERT INTO `layout_url` VALUES (5, 'language.compare_page', '/compare.html', '_self', 'footer', '', 1, 4);
INSERT INTO `layout_url` VALUES (6, 'language.wishlist_page', '/wishlist.html', '_self', 'footer', '', 1, 3);
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2019_05_25_v3_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (2, '2019_05_25_v3_insert_data_scart', 1);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for shipping_standard
-- ----------------------------
DROP TABLE IF EXISTS `shipping_standard`;
CREATE TABLE `shipping_standard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fee` int(11) NOT NULL,
  `shipping_free` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shipping_standard
-- ----------------------------
BEGIN;
INSERT INTO `shipping_standard` VALUES (1, 20000, 100000);
COMMIT;

-- ----------------------------
-- Table structure for shop_api
-- ----------------------------
DROP TABLE IF EXISTS `shop_api`;
CREATE TABLE `shop_api` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hidden_default` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_api_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_api
-- ----------------------------
BEGIN;
INSERT INTO `shop_api` VALUES (1, 'api_product_list', '', 'secret');
INSERT INTO `shop_api` VALUES (2, 'api_product_detail', 'cost,sold,stock,sort', 'private');
INSERT INTO `shop_api` VALUES (3, 'api_order_list', '', 'public');
INSERT INTO `shop_api` VALUES (4, 'api_order_detail', '', 'secret');
COMMIT;

-- ----------------------------
-- Table structure for shop_api_process
-- ----------------------------
DROP TABLE IF EXISTS `shop_api_process`;
CREATE TABLE `shop_api_process` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `secret_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hidden_fileds` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_allow` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_deny` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_api_process_secret_key_unique` (`secret_key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_api_process
-- ----------------------------
BEGIN;
INSERT INTO `shop_api_process` VALUES (1, 1, '!CVCBsd$6j9ds3%flh[^d', 'descriptions,cost', '', '127.0.0.11,1233.2.2.3', '2019-12-14 00:00:00', 1, NULL, NULL);
INSERT INTO `shop_api_process` VALUES (2, 1, '%GSFf13gkLtP@d', '', '', '', NULL, 1, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for shop_attribute_detail
-- ----------------------------
DROP TABLE IF EXISTS `shop_attribute_detail`;
CREATE TABLE `shop_attribute_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_attribute_detail
-- ----------------------------
BEGIN;
INSERT INTO `shop_attribute_detail` VALUES (1, 'Blue', 1, 16, 0);
INSERT INTO `shop_attribute_detail` VALUES (2, 'White', 1, 16, 0);
INSERT INTO `shop_attribute_detail` VALUES (3, 'S', 2, 16, 0);
INSERT INTO `shop_attribute_detail` VALUES (4, 'XL', 2, 16, 0);
INSERT INTO `shop_attribute_detail` VALUES (5, 'Blue', 1, 15, 0);
INSERT INTO `shop_attribute_detail` VALUES (6, 'Red', 1, 15, 0);
INSERT INTO `shop_attribute_detail` VALUES (7, 'S', 2, 15, 0);
INSERT INTO `shop_attribute_detail` VALUES (8, 'M', 2, 15, 0);
COMMIT;

-- ----------------------------
-- Table structure for shop_attribute_group
-- ----------------------------
DROP TABLE IF EXISTS `shop_attribute_group`;
CREATE TABLE `shop_attribute_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_attribute_group
-- ----------------------------
BEGIN;
INSERT INTO `shop_attribute_group` VALUES (1, 'Color', 1, 1, 'radio');
INSERT INTO `shop_attribute_group` VALUES (2, 'Size', 1, 2, 'select');
COMMIT;

-- ----------------------------
-- Table structure for shop_brand
-- ----------------------------
DROP TABLE IF EXISTS `shop_brand`;
CREATE TABLE `shop_brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_brand
-- ----------------------------
BEGIN;
INSERT INTO `shop_brand` VALUES (1, 'Husq', 'brand/1ca28f797c0f2edb635c4b51c2e7e952.png', '', 1, 0);
INSERT INTO `shop_brand` VALUES (2, 'Ideal', 'brand/0a778de7e1e2f2a0635d6a1727e3de8d.png', '', 1, 0);
INSERT INTO `shop_brand` VALUES (3, 'Apex', 'brand/d3abfcfc8c0fef7e1356fc637ab9d8d8.png', '', 1, 0);
INSERT INTO `shop_brand` VALUES (4, 'CST', 'brand/185c50c85b83644e02e8b96639370341.png', '', 1, 0);
INSERT INTO `shop_brand` VALUES (5, 'Klein', 'brand/3e11cc022e9f30774ab5f6a0c6c36451.png', '', 1, 0);
INSERT INTO `shop_brand` VALUES (6, 'Metabo', 'brand/7868b0924b8f115aef70292aea1a67b8.png', '', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for shop_category
-- ----------------------------
DROP TABLE IF EXISTS `shop_category`;
CREATE TABLE `shop_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `top` int(11) DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_category
-- ----------------------------
BEGIN;
INSERT INTO `shop_category` VALUES (1, '', 0, 1, 1, 0);
INSERT INTO `shop_category` VALUES (2, '', 0, 1, 1, 0);
INSERT INTO `shop_category` VALUES (3, '', 0, 1, 1, 0);
INSERT INTO `shop_category` VALUES (4, '', 0, 1, 1, 0);
INSERT INTO `shop_category` VALUES (5, '', 0, 1, 1, 0);
INSERT INTO `shop_category` VALUES (6, '', 9, 0, 1, 0);
INSERT INTO `shop_category` VALUES (7, '', 4, 0, 1, 0);
INSERT INTO `shop_category` VALUES (8, '', 4, 0, 1, 0);
INSERT INTO `shop_category` VALUES (9, '', 0, 1, 1, 0);
INSERT INTO `shop_category` VALUES (10, '', 2, 0, 1, 0);
INSERT INTO `shop_category` VALUES (11, '', 1, 0, 1, 0);
INSERT INTO `shop_category` VALUES (12, '', 1, 0, 1, 3);
COMMIT;

-- ----------------------------
-- Table structure for shop_category_description
-- ----------------------------
DROP TABLE IF EXISTS `shop_category_description`;
CREATE TABLE `shop_category_description` (
  `shop_category_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `shop_category_description_shop_category_id_lang_id_unique` (`shop_category_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_category_description
-- ----------------------------
BEGIN;
INSERT INTO `shop_category_description` VALUES (1, 1, 'SPORTSWEAR', '', '');
INSERT INTO `shop_category_description` VALUES (1, 2, 'Mục SPORTSWEAR', '', '');
INSERT INTO `shop_category_description` VALUES (2, 1, 'MENS', '', '');
INSERT INTO `shop_category_description` VALUES (2, 2, 'Mục MENS', '', '');
INSERT INTO `shop_category_description` VALUES (3, 1, 'WOMENS', '', '');
INSERT INTO `shop_category_description` VALUES (3, 2, 'Mục WOMENS', '', '');
INSERT INTO `shop_category_description` VALUES (4, 1, 'KIDS', '', '');
INSERT INTO `shop_category_description` VALUES (4, 2, 'Mục KIDS', '', '');
INSERT INTO `shop_category_description` VALUES (5, 1, 'FASHION', '', '');
INSERT INTO `shop_category_description` VALUES (5, 2, 'Mục FASHION', '', '');
INSERT INTO `shop_category_description` VALUES (6, 1, 'GUESS', '', '');
INSERT INTO `shop_category_description` VALUES (6, 2, 'Mục GUESS', '', '');
INSERT INTO `shop_category_description` VALUES (7, 1, 'PUMA', '', '');
INSERT INTO `shop_category_description` VALUES (7, 2, 'Mục PUMA', '', '');
INSERT INTO `shop_category_description` VALUES (8, 1, 'ASICS', '', '');
INSERT INTO `shop_category_description` VALUES (8, 2, 'Mục ASICS', '', '');
INSERT INTO `shop_category_description` VALUES (9, 1, 'HOUSEHOLDS', '', '');
INSERT INTO `shop_category_description` VALUES (9, 2, 'Mục HOUSEHOLDS', '', '');
INSERT INTO `shop_category_description` VALUES (10, 1, 'VALENTINO', '', '');
INSERT INTO `shop_category_description` VALUES (10, 2, 'Mục VALENTINO', '', '');
INSERT INTO `shop_category_description` VALUES (11, 1, 'DIOR', '', '');
INSERT INTO `shop_category_description` VALUES (11, 2, 'Mục DIOR', '', '');
INSERT INTO `shop_category_description` VALUES (12, 1, 'FENDI', '', '');
INSERT INTO `shop_category_description` VALUES (12, 2, 'Mục FENDI', '', '');
COMMIT;

-- ----------------------------
-- Table structure for shop_currency
-- ----------------------------
DROP TABLE IF EXISTS `shop_currency`;
CREATE TABLE `shop_currency` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) NOT NULL,
  `precision` tinyint(4) NOT NULL DEFAULT '2',
  `symbol_first` tinyint(4) NOT NULL DEFAULT '0',
  `thousands` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_currency_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_currency
-- ----------------------------
BEGIN;
INSERT INTO `shop_currency` VALUES (1, 'USD Dola', 'USD', '$', 1.00, 0, 1, ',', 1, 0);
INSERT INTO `shop_currency` VALUES (2, 'VietNam Dong', 'VND', '₫', 20.00, 0, 0, ',', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for shop_discount
-- ----------------------------
DROP TABLE IF EXISTS `shop_discount`;
CREATE TABLE `shop_discount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward` int(11) NOT NULL DEFAULT '2',
  `type` int(11) NOT NULL DEFAULT '0',
  `data` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_uses` int(11) NOT NULL DEFAULT '1',
  `used` int(11) NOT NULL DEFAULT '0',
  `login` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `expires_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_discount_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for shop_discount_user
-- ----------------------------
DROP TABLE IF EXISTS `shop_discount_user`;
CREATE TABLE `shop_discount_user` (
  `user_id` int(11) NOT NULL,
  `discount_id` int(11) NOT NULL,
  `log` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for shop_order
-- ----------------------------
DROP TABLE IF EXISTS `shop_order`;
CREATE TABLE `shop_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `subtotal` int(11) DEFAULT '0',
  `shipping` int(11) DEFAULT '0',
  `discount` int(11) DEFAULT '0',
  `payment_status` int(11) NOT NULL DEFAULT '0',
  `shipping_status` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `tax` int(11) DEFAULT '0',
  `total` int(11) DEFAULT '0',
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) DEFAULT NULL,
  `received` int(11) DEFAULT '0',
  `balance` int(11) DEFAULT '0',
  `toname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` int(11) DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for shop_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_detail`;
CREATE TABLE `shop_order_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `qty` int(11) NOT NULL DEFAULT '0',
  `total_price` int(11) NOT NULL DEFAULT '0',
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double(8,2) NOT NULL,
  `attribute` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for shop_order_history
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_history`;
CREATE TABLE `shop_order_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `content` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `add_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for shop_order_status
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_status`;
CREATE TABLE `shop_order_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_order_status
-- ----------------------------
BEGIN;
INSERT INTO `shop_order_status` VALUES (1, 'New');
INSERT INTO `shop_order_status` VALUES (2, 'Processing');
INSERT INTO `shop_order_status` VALUES (3, 'Hold');
INSERT INTO `shop_order_status` VALUES (4, 'Canceled');
INSERT INTO `shop_order_status` VALUES (5, 'Done');
INSERT INTO `shop_order_status` VALUES (6, 'Failed');
COMMIT;

-- ----------------------------
-- Table structure for shop_order_total
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_total`;
CREATE TABLE `shop_order_total` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  `text` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for shop_page
-- ----------------------------
DROP TABLE IF EXISTS `shop_page`;
CREATE TABLE `shop_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uniquekey` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_page_uniquekey_unique` (`uniquekey`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_page
-- ----------------------------
BEGIN;
INSERT INTO `shop_page` VALUES (1, '', 'about', 1);
INSERT INTO `shop_page` VALUES (2, '', 'contact', 1);
COMMIT;

-- ----------------------------
-- Table structure for shop_page_description
-- ----------------------------
DROP TABLE IF EXISTS `shop_page_description`;
CREATE TABLE `shop_page_description` (
  `page_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  UNIQUE KEY `shop_page_description_page_id_lang_id_unique` (`page_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_page_description
-- ----------------------------
BEGIN;
INSERT INTO `shop_page_description` VALUES (1, 1, 'About', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n');
INSERT INTO `shop_page_description` VALUES (1, 2, 'Giới thiệu', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n');
INSERT INTO `shop_page_description` VALUES (2, 1, 'Contact', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n');
INSERT INTO `shop_page_description` VALUES (2, 2, 'Liên hệ với chúng tôi', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n');
COMMIT;

-- ----------------------------
-- Table structure for shop_payment_status
-- ----------------------------
DROP TABLE IF EXISTS `shop_payment_status`;
CREATE TABLE `shop_payment_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_payment_status
-- ----------------------------
BEGIN;
INSERT INTO `shop_payment_status` VALUES (1, 'Unpaid');
INSERT INTO `shop_payment_status` VALUES (2, 'Partial payment');
INSERT INTO `shop_payment_status` VALUES (3, 'Paid');
INSERT INTO `shop_payment_status` VALUES (4, 'Refurn');
COMMIT;

-- ----------------------------
-- Table structure for shop_product
-- ----------------------------
DROP TABLE IF EXISTS `shop_product`;
CREATE TABLE `shop_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) DEFAULT '0',
  `vendor_id` int(11) DEFAULT '0',
  `category_id` int(11) DEFAULT '0',
  `category_other` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `cost` int(11) DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT '0',
  `sold` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `option` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `date_lastview` datetime DEFAULT NULL,
  `date_available` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_product_sku_unique` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_product
-- ----------------------------
BEGIN;
INSERT INTO `shop_product` VALUES (1, 'MEGA2560', 'product/f2d9505d28f1b10f949cec466cada01e.jpeg', 1, 1, 7, NULL, 15000, 10000, 100, 0, 0, NULL, 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `shop_product` VALUES (2, 'LEDFAN1', 'product/95349d3747fdaf79d391fdc98e083701.jpg', 1, 1, 6, NULL, 15000, 10000, 100, 0, 0, NULL, 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `shop_product` VALUES (3, 'CLOCKFAN1', 'product/15aa6b1f31b53a0177d7653761a45274.jpeg', 2, 1, 12, NULL, 15000, 10000, 100, 0, 0, NULL, 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `shop_product` VALUES (4, 'CLOCKFAN2', 'product/0e1416d509af3712bd801404ca928702.jpeg', 3, 1, 12, NULL, 15000, 10000, 100, 0, 0, NULL, 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `shop_product` VALUES (5, 'CLOCKFAN3', 'product/95349d3747fdaf79d391fdc98e083701.jpg', 1, 1, 12, NULL, 15000, 10000, 100, 0, 0, NULL, 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `shop_product` VALUES (6, 'TMC2208', 'product/95349d3747fdaf79d391fdc98e083701.jpg', 1, 1, 11, NULL, 15000, 10000, 100, 0, 0, NULL, 1, 0, 1, '2019-07-18 15:42:18', NULL, NULL, '2019-07-18 15:42:18');
INSERT INTO `shop_product` VALUES (7, 'FILAMENT', 'product/95349d3747fdaf79d391fdc98e083701.jpg', 2, 1, 12, NULL, 15000, 10000, 100, 0, 0, NULL, 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `shop_product` VALUES (8, 'A4988', 'product/820283598735f98a9b23960821da438b.jpeg', 2, 1, 12, NULL, 15000, 10000, 100, 0, 0, NULL, 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `shop_product` VALUES (9, 'ANYCUBIC-P', 'product/d63af407fa92299e163696a585566dc7.jpeg', 2, 1, 10, NULL, 15000, 10000, 100, 0, 0, NULL, 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `shop_product` VALUES (10, '3DHLFD-P', 'product/95349d3747fdaf79d391fdc98e083701.jpg', 4, 1, 9, NULL, 15000, 10000, 100, 0, 0, NULL, 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `shop_product` VALUES (11, 'SS495A', 'product/95349d3747fdaf79d391fdc98e083701.jpg', 2, 1, 6, NULL, 15000, 10000, 100, 0, 0, NULL, 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `shop_product` VALUES (12, '3D-CARBON1.75', 'product/d05966a529efdd8d7b41ed9b687859b6.jpeg', 2, 1, 11, NULL, 15000, 10000, 100, 0, 0, NULL, 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `shop_product` VALUES (13, '3D-GOLD1.75', 'product/eedfd153bf368919a134da17f22c8de7.jpeg', 3, 1, 10, NULL, 15000, 10000, 100, 0, 0, NULL, 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `shop_product` VALUES (14, 'LCD12864-3D', 'product/a7a315526ecf7594731448d792714a11.jpeg', 3, 1, 11, NULL, 15000, 10000, 100, 0, 0, NULL, 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `shop_product` VALUES (15, 'LCD2004-3D', 'product/9215506044b8a350fc082f5350b3653a.jpg', 3, 1, 9, NULL, 15000, 10000, 100, 0, 0, NULL, 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `shop_product` VALUES (16, 'RAMPS1.5-3D', 'product/cd7aa3394c35330ed7f9e4095c6adb65.jpeg', 2, 1, 11, NULL, 15000, 10000, 100, 0, 0, NULL, 1, 0, 2, '2019-07-18 15:24:17', NULL, NULL, '2019-07-18 15:24:17');
COMMIT;

-- ----------------------------
-- Table structure for shop_product_description
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_description`;
CREATE TABLE `shop_product_description` (
  `product_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  UNIQUE KEY `shop_product_description_product_id_lang_id_unique` (`product_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_product_description
-- ----------------------------
BEGIN;
INSERT INTO `shop_product_description` VALUES (1, 1, 'Easy Polo Black Edition 1', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (1, 2, 'Easy Polo Black Edition 1', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (2, 1, 'Easy Polo Black Edition 2', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (2, 2, 'Easy Polo Black Edition 2', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (3, 1, 'Easy Polo Black Edition 3', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (3, 2, 'Easy Polo Black Edition 3', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (4, 1, 'Easy Polo Black Edition 4', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (4, 2, 'Easy Polo Black Edition 4', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (5, 1, 'Easy Polo Black Edition 5', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (5, 2, 'Easy Polo Black Edition 5', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (6, 1, 'Easy Polo Black Edition 6', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (6, 2, 'Easy Polo Black Edition 6', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (7, 1, 'Easy Polo Black Edition 7', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (7, 2, 'Easy Polo Black Edition 7', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (8, 1, 'Easy Polo Black Edition 8', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (8, 2, 'Easy Polo Black Edition 8', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (9, 1, 'Easy Polo Black Edition 9', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (9, 2, 'Easy Polo Black Edition 9', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (10, 1, 'Easy Polo Black Edition 10', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (10, 2, 'Easy Polo Black Edition 10', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (11, 1, 'Easy Polo Black Edition 11', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (11, 2, 'Easy Polo Black Edition 11', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (12, 1, 'Easy Polo Black Edition 12', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (12, 2, 'Easy Polo Black Edition 12', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (13, 1, 'Easy Polo Black Edition 13', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (13, 2, 'Easy Polo Black Edition 13', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (14, 1, 'Easy Polo Black Edition 14', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (14, 2, 'Easy Polo Black Edition 14', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (15, 1, 'Easy Polo Black Edition 15', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (15, 2, 'Easy Polo Black Edition 15', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (16, 1, 'Easy Polo Black Edition 16', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
INSERT INTO `shop_product_description` VALUES (16, 2, 'Easy Polo Black Edition 16', '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<img alt=\"\" src=\"/documents/photos/blogs/16d9_star_trek_tng_uniform_tee.jpeg\" style=\"width: 262px; height: 262px; float: right; margin: 10px;\" /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>');
COMMIT;

-- ----------------------------
-- Table structure for shop_product_image
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_image`;
CREATE TABLE `shop_product_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_product_image
-- ----------------------------
BEGIN;
INSERT INTO `shop_product_image` VALUES (1, 'product_slide/0642809276ecd6a28cb23d464cf41734.jpeg', 1, 1, 1);
INSERT INTO `shop_product_image` VALUES (2, 'product_slide/f4786d81509a8d8ffa461535b07c77bc.png', 1, 1, 1);
INSERT INTO `shop_product_image` VALUES (3, 'product_slide/e09af215f794f8225063c368f46a971d.jpeg', 2, 1, 1);
INSERT INTO `shop_product_image` VALUES (4, 'product_slide/54fac65e58eb9abafe3ac1acbde5ee6d.jpeg', 6, 1, 1);
INSERT INTO `shop_product_image` VALUES (5, 'product_slide/81f37c10d867710075e3ab6153a31d03.png', 11, 1, 1);
INSERT INTO `shop_product_image` VALUES (6, 'product_slide/2fbba5ac3b9c0838e5ce2b536d0c5659.jpeg', 10, 1, 1);
INSERT INTO `shop_product_image` VALUES (7, 'product_slide/8718dfdb75f951010cdce669768c3e3a.png', 11, 1, 1);
INSERT INTO `shop_product_image` VALUES (8, 'product_slide/86282e4f808428108773596dea5ee29c.jpeg', 14, 1, 1);
INSERT INTO `shop_product_image` VALUES (9, 'product_slide/b89873b9c888c0511e14c6e3abc798e8.jpeg', 14, 1, 1);
INSERT INTO `shop_product_image` VALUES (10, 'product_slide/b0d9ffad7e40d07bae6d36665f765e0f.jpeg', 14, 1, 1);
INSERT INTO `shop_product_image` VALUES (11, 'product_slide/70edffd9b5b4121fb8aee7e41c941f03.jpeg', 10, 1, 1);
INSERT INTO `shop_product_image` VALUES (12, 'product_slide/e9d5898fc6daf50751ec0c4e91ed904d.jpeg', 15, 1, 1);
INSERT INTO `shop_product_image` VALUES (13, 'product_slide/e91e85e37bb89ed854aa4123ce5eb14f.jpeg', 15, 1, 1);
INSERT INTO `shop_product_image` VALUES (14, 'product_slide/bcf85f60d3fe35de2c1be6272f9605ef.png', 15, 1, 1);
INSERT INTO `shop_product_image` VALUES (15, 'product_slide/40999526f41b1d4090e30c6b0ce21dca.jpg', 16, 1, 1);
INSERT INTO `shop_product_image` VALUES (16, 'product_slide/7963a1dc4e1676c2b3bc97ade96de7b6.jpeg', 16, 1, 1);
INSERT INTO `shop_product_image` VALUES (17, 'product_slide/101a109520cfbddde1be1791423010b6.jpeg', 16, 1, 1);
INSERT INTO `shop_product_image` VALUES (18, 'product_slide/f02dbb115272eac46f46f015608ab93a.jpeg', 16, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for shop_product_like
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_like`;
CREATE TABLE `shop_product_like` (
  `product_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`product_id`,`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for shop_product_option
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_option`;
CREATE TABLE `shop_product_option` (
  `id` int(11) NOT NULL,
  `opt_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opt_sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opt_price` int(11) NOT NULL DEFAULT '0',
  `opt_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  UNIQUE KEY `shop_product_option_opt_sku_unique` (`opt_sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for shop_shipping
-- ----------------------------
DROP TABLE IF EXISTS `shop_shipping`;
CREATE TABLE `shop_shipping` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  `free` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_shipping
-- ----------------------------
BEGIN;
INSERT INTO `shop_shipping` VALUES (1, 0, 20000, 10000000, 1);
COMMIT;

-- ----------------------------
-- Table structure for shop_shipping_status
-- ----------------------------
DROP TABLE IF EXISTS `shop_shipping_status`;
CREATE TABLE `shop_shipping_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_shipping_status
-- ----------------------------
BEGIN;
INSERT INTO `shop_shipping_status` VALUES (1, 'Not sent');
INSERT INTO `shop_shipping_status` VALUES (2, 'Sending');
INSERT INTO `shop_shipping_status` VALUES (3, 'Shipping done');
COMMIT;

-- ----------------------------
-- Table structure for shop_shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `shop_shoppingcart`;
CREATE TABLE `shop_shoppingcart` (
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `shop_shoppingcart_identifier_instance_index` (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for shop_special_price
-- ----------------------------
DROP TABLE IF EXISTS `shop_special_price`;
CREATE TABLE `shop_special_price` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `off` int(11) NOT NULL DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for shop_users
-- ----------------------------
DROP TABLE IF EXISTS `shop_users`;
CREATE TABLE `shop_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for shop_vendor
-- ----------------------------
DROP TABLE IF EXISTS `shop_vendor`;
CREATE TABLE `shop_vendor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shop_vendor
-- ----------------------------
BEGIN;
INSERT INTO `shop_vendor` VALUES (1, 'ABC distributor', 'abc@abc.com', '012496657567', '', '', '', 0);
COMMIT;

-- ----------------------------
-- Table structure for subscribe
-- ----------------------------
DROP TABLE IF EXISTS `subscribe`;
CREATE TABLE `subscribe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
