-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2021 at 05:59 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `email`) VALUES
(1, 'Admin', 'admin', 'admin', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `heading` varchar(500) NOT NULL,
  `sub_heading` varchar(500) NOT NULL,
  `link` varchar(100) NOT NULL,
  `link_txt` varchar(100) NOT NULL,
  `order_number` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image`, `heading`, `sub_heading`, `link`, `link_txt`, `order_number`, `added_on`, `status`) VALUES
(1, '564742043_slider-1.jpg', 'Online Food Ordering', 'Happy Shopping', 'shop', 'Order Now', 1, '2020-06-23 03:00:05', 1),
(2, '418556613_slider-2.jpg', 'Drink & Healthy Food', 'Fresh Healthy and Organic', 'shop', 'Order Now', 1, '2020-06-23 03:06:53', 1),
(3, '883187506_slider-3.jpg', 'Fresh Food', 'happy shoping', 'shop', 'order now', 3, '2020-12-02 08:23:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `order_number` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `order_number`, `status`, `added_on`) VALUES
(1, 'Chaat & Snacks', 1, 1, '2020-06-16 12:06:33'),
(2, 'Chinese', 2, 1, '2020-06-16 12:06:41'),
(3, 'South Indian', 3, 1, '2020-06-16 12:06:59'),
(4, 'Desserts', 4, 1, '2020-06-16 12:07:18'),
(6, 'Cold-Drink', 5, 1, '2021-03-25 09:01:04'),
(7, 'Pizza', 6, 1, '2021-03-25 09:07:55'),
(8, 'Burger', 8, 1, '2021-03-25 09:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_code`
--

CREATE TABLE `coupon_code` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(20) NOT NULL,
  `coupon_type` enum('P','F') NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `cart_min_value` int(11) NOT NULL,
  `expired_on` date NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon_code`
--

INSERT INTO `coupon_code` (`id`, `coupon_code`, `coupon_type`, `coupon_value`, `cart_min_value`, `expired_on`, `status`, `added_on`) VALUES
(1, 'FIRST50', 'P', 10, 50, '2020-08-20', 1, '2020-06-20 05:31:03'),
(3, '500', 'F', 20, 50, '2020-12-25', 1, '2020-12-02 08:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`id`, `name`, `mobile`, `password`, `status`, `added_on`) VALUES
(1, 'Viraj', '1234567890', 'vj', 1, '2020-07-08 08:06:06'),
(2, 'Abhisek', '1234567891', 'ag', 1, '2020-07-08 08:06:21'),
(3, 'vandit', '9999999999', 'vb', 1, '2020-11-30 09:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `dish`
--

CREATE TABLE `dish` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `dish` varchar(100) NOT NULL,
  `dish_detail` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `type` enum('veg','non-veg') NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish`
--

INSERT INTO `dish` (`id`, `category_id`, `dish`, `dish_detail`, `image`, `type`, `status`, `added_on`) VALUES
(3, 2, 'Chow mein', 'Chow mein', '836724175_Chowmein.jpg', 'non-veg', 1, '2020-06-17 10:47:26'),
(5, 1, 'Raj-Kachori', 'very good product', '377534825_325195312_raj-kachori.jpeg', 'veg', 1, '2020-07-06 12:00:24'),
(6, 6, 'Pepsi', 'Pepsi...', '539943885_pepsi.jpg', 'veg', 1, '2021-03-25 09:02:49'),
(7, 6, 'Fanta', 'Fanta...', '988588619_fanta.jpg', 'veg', 1, '2021-03-25 09:10:31'),
(8, 6, 'Coca-Cola', 'Coca-Cola...\r\n', '793154589_coca cola.jpg', 'veg', 1, '2021-03-25 09:12:06'),
(9, 3, 'Dosa', 'Dosha', '289672091_dosa.jpg', 'veg', 1, '2021-03-26 01:04:58'),
(10, 3, 'Rice', 'Rice...', '890458678_rice.jpg', 'veg', 1, '2021-03-26 01:06:43'),
(11, 3, 'Mendu-Vada', 'Mendu-Vada...', '815023641_menduvada.jpg', 'veg', 1, '2021-03-26 01:08:04'),
(12, 2, 'Non-Veg. Hakka Noodles', 'Chiken Hakka-Noodles...', '552889072_chiken hakka nodd.jpg', 'non-veg', 1, '2021-03-26 01:10:19'),
(13, 2, 'Veg. Hakka Noodles', 'Veg. Hakka-Noodles...', '892930106_veg hakka nood.jpg', 'veg', 1, '2021-03-26 01:12:17'),
(14, 2, 'Mancuriyan', 'Mancuriyan...', '309871451_manchu.jpg', 'veg', 1, '2021-03-26 01:14:18'),
(15, 1, 'Chana-Chor', 'Chana-Chor...', '994502626_chanachor.jpg', 'veg', 1, '2021-03-26 01:43:01'),
(16, 1, 'Dabeli', 'Dabeli...', '175581586_dabeli.jpg', 'veg', 1, '2021-03-26 01:44:00'),
(17, 1, 'Dahi-Puri', 'Dahi-Puri...', '264303549_dahi-puri.jpg', 'veg', 1, '2021-03-26 01:45:08'),
(18, 1, 'Masala Peanuts', 'Masala-Peanuts...', '872040044_masala peanuts.jpg', 'veg', 1, '2021-03-26 01:46:19'),
(19, 1, 'Pani Puri', 'Pani-Puri...', '472352314_panipuri.jpg', 'veg', 1, '2021-03-26 01:47:39'),
(20, 1, 'Papri Chat', 'Papri-Chat...', '896608708_papri-chat.jpg', 'veg', 1, '2021-03-26 01:48:31'),
(21, 8, 'Air Fryer ', 'Air-Fryer...', '558509235_air fryer.jpg', 'non-veg', 1, '2021-03-26 01:50:58'),
(22, 8, 'Avocado', 'Avocado...', '894395608_avocado chicen.jpg', 'non-veg', 1, '2021-03-26 01:51:52'),
(23, 8, 'Black-Bean', 'Black-Bean...', '982244213_black-bean burger.jpg', 'veg', 1, '2021-03-26 02:43:56'),
(24, 8, 'Gralic', 'Garlic...', '910242687_garlic burger.jpg', 'veg', 1, '2021-03-26 02:46:13'),
(25, 8, 'Ham', 'Ham...', '986878220_ham burger.jpg', 'veg', 1, '2021-03-26 02:47:05'),
(26, 8, 'HT Grill', 'HT-Grill...', '490856290_ht grill berger.jpg', 'veg', 1, '2021-03-26 02:48:12'),
(27, 7, 'Barbecue(BBQ)', 'BBQ...', '193384632_BBQ-Chicken-Pizza.jpg', 'non-veg', 1, '2021-03-26 03:21:21'),
(28, 7, 'Creamy Mashroom', 'Creamy-Mashroom...', '867510230_creamy mashroom.jpg', 'non-veg', 1, '2021-03-26 03:22:45'),
(29, 7, 'Spicy Chiken', 'Spicy...', '401166821_spicy chiken pizz.jpg', 'non-veg', 1, '2021-03-26 03:23:48'),
(30, 7, 'Tandoori Chiken', 'Tandoori...', '878691620_tandoori chiken pizz.jpg', 'non-veg', 1, '2021-03-26 03:24:50'),
(31, 7, 'Margherita', 'Margherita...', '657345271_margherita.jpg', 'veg', 1, '2021-03-26 03:37:47'),
(32, 7, 'Maxicana', 'Maxicana...', '976759468_maxicana.jpg', 'veg', 1, '2021-03-26 03:38:45'),
(33, 7, 'Vagitarian', 'Vagitarian...', '167890289_vagitarian.jpg', 'veg', 1, '2021-03-26 03:39:41'),
(34, 4, 'Chocolate Cake', 'Chocolate Cake...', '705038244_chocolate.jpg', 'veg', 1, '2021-03-26 04:22:46'),
(35, 4, 'Strawberry Cake', 'Strawberry Cake...', '424513311_strawberry.jpg', 'veg', 1, '2021-03-26 04:24:35'),
(36, 4, 'Condensed Milk Brownies', 'condensed milk brownies...', '425015759_condensed milk brownies.jpg', 'veg', 1, '2021-03-26 04:25:47'),
(37, 4, 'Dark-Chocolate Brownies', 'Dark-Chocolate-Brownies...', '311012492_Dark-Chocolate-Brownies.jpg', 'veg', 1, '2021-03-26 04:27:11'),
(38, 4, 'Fudge-Walnut Brownies', 'fudge-walnut brownies...', '971802195_fudge-walnut brownies.jpg', 'veg', 1, '2021-03-26 04:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `dish_cart`
--

CREATE TABLE `dish_cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dish_detail_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish_cart`
--

INSERT INTO `dish_cart` (`id`, `user_id`, `dish_detail_id`, `qty`, `added_on`) VALUES
(21, 2, 11, 3, '2020-11-29 12:25:34'),
(22, 2, 6, 1, '2020-11-29 12:25:58'),
(26, 8, 11, 13, '2020-11-29 01:37:41'),
(42, 70, 11, 2, '2020-11-29 02:47:32');

-- --------------------------------------------------------

--
-- Table structure for table `dish_details`
--

CREATE TABLE `dish_details` (
  `id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `attribute` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish_details`
--

INSERT INTO `dish_details` (`id`, `dish_id`, `attribute`, `price`, `status`, `added_on`) VALUES
(1, 3, 'Full', 100, 1, '2020-06-19 10:25:47'),
(2, 3, 'Half', 50, 1, '2020-06-19 10:49:45'),
(6, 1, 'Per Piece', 20, 1, '2020-06-20 00:00:00'),
(8, 4, 'Half', 60, 1, '2020-06-27 12:50:50'),
(9, 4, 'Full', 120, 1, '2020-06-27 12:50:50'),
(11, 5, 'Half', 50, 1, '2020-07-06 12:00:24'),
(12, 5, 'Full', 100, 1, '2020-07-06 12:00:24'),
(13, 6, 'Full', 30, 1, '2021-03-25 09:02:49'),
(14, 7, 'Full', 25, 1, '2021-03-25 09:10:31'),
(15, 8, 'Full', 30, 1, '2021-03-25 09:12:06'),
(16, 9, 'Full', 70, 1, '2021-03-26 01:04:58'),
(17, 10, 'Full', 80, 1, '2021-03-26 01:06:43'),
(18, 10, 'Half', 40, 1, '2021-03-26 01:06:43'),
(19, 11, 'Full', 60, 1, '2021-03-26 01:08:04'),
(20, 11, 'Half', 30, 1, '2021-03-26 01:08:04'),
(21, 12, 'Full', 90, 1, '2021-03-26 01:10:19'),
(22, 12, 'Half', 45, 1, '2021-03-26 01:10:19'),
(23, 13, 'Full', 80, 1, '2021-03-26 01:12:17'),
(24, 13, 'Half', 40, 1, '2021-03-26 01:12:17'),
(25, 14, 'Full', 90, 1, '2021-03-26 01:14:18'),
(26, 14, 'Half', 45, 1, '2021-03-26 01:14:18'),
(27, 15, 'Full', 50, 1, '2021-03-26 01:43:01'),
(28, 15, 'Half', 25, 1, '2021-03-26 01:43:01'),
(29, 16, 'Per Piece', 15, 1, '2021-03-26 01:44:00'),
(30, 17, 'Per Plate', 40, 1, '2021-03-26 01:45:08'),
(31, 18, 'Per Plate', 50, 1, '2021-03-26 01:46:19'),
(32, 19, 'Per Plate', 40, 1, '2021-03-26 01:47:39'),
(33, 20, 'Per Plate', 40, 1, '2021-03-26 01:48:31'),
(34, 21, 'large', 80, 1, '2021-03-26 01:50:58'),
(35, 21, 'Small', 50, 1, '2021-03-26 01:50:58'),
(36, 22, 'Large', 80, 1, '2021-03-26 01:51:52'),
(37, 22, 'Small', 50, 1, '2021-03-26 01:51:52'),
(38, 23, 'Large', 80, 1, '2021-03-26 02:43:56'),
(39, 23, 'Small', 40, 1, '2021-03-26 02:43:56'),
(40, 24, 'Large', 70, 1, '2021-03-26 02:46:13'),
(41, 24, 'Small', 35, 1, '2021-03-26 02:46:13'),
(42, 25, 'Large', 80, 1, '2021-03-26 02:47:05'),
(43, 25, 'Small', 40, 1, '2021-03-26 02:47:05'),
(44, 26, 'Large', 70, 1, '2021-03-26 02:48:12'),
(45, 26, 'Small', 35, 1, '2021-03-26 02:48:12'),
(46, 27, 'Large', 180, 1, '2021-03-26 03:21:21'),
(47, 27, 'Small', 120, 1, '2021-03-26 03:21:21'),
(48, 28, 'Large', 220, 1, '2021-03-26 03:22:45'),
(49, 28, 'Small', 160, 1, '2021-03-26 03:22:45'),
(50, 29, 'Large', 200, 1, '2021-03-26 03:23:48'),
(51, 29, 'Small', 140, 1, '2021-03-26 03:23:48'),
(52, 30, 'Large', 180, 1, '2021-03-26 03:24:50'),
(53, 30, 'Small', 120, 1, '2021-03-26 03:24:50'),
(54, 31, 'Large', 180, 1, '2021-03-26 03:37:47'),
(55, 31, 'Small', 120, 1, '2021-03-26 03:37:47'),
(56, 32, 'Large', 200, 1, '2021-03-26 03:38:45'),
(57, 32, 'Small', 130, 1, '2021-03-26 03:38:45'),
(58, 33, 'Large', 150, 1, '2021-03-26 03:39:41'),
(59, 33, 'Small', 90, 1, '2021-03-26 03:39:41'),
(60, 34, 'Full', 360, 1, '2021-03-26 04:22:46'),
(61, 34, 'Pastry Per Piece', 40, 1, '2021-03-26 04:22:46'),
(62, 35, 'Full', 420, 1, '2021-03-26 04:24:35'),
(63, 35, 'Pastry Per Piece', 50, 1, '2021-03-26 04:24:35'),
(64, 36, 'Per Piece', 40, 1, '2021-03-26 04:25:47'),
(65, 37, 'Per Piece', 55, 1, '2021-03-26 04:27:11'),
(66, 38, 'Per Piece', 60, 1, '2021-03-26 04:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `dish_details_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `dish_details_id`, `price`, `qty`) VALUES
(1, 1, 6, 40, 6),
(2, 2, 6, 40, 4),
(3, 3, 6, 40, 3),
(4, 4, 6, 40, 6),
(5, 5, 2, 170, 4),
(6, 6, 6, 40, 2),
(7, 7, 6, 40, 3),
(8, 8, 6, 40, 3),
(9, 9, 6, 40, 2),
(10, 10, 11, 100, 2),
(11, 11, 11, 100, 2),
(12, 12, 11, 100, 1),
(13, 13, 11, 100, 3),
(14, 14, 11, 100, 2),
(15, 15, 11, 100, 2),
(16, 16, 11, 100, 2),
(17, 17, 11, 100, 2),
(18, 18, 11, 100, 2),
(19, 19, 11, 100, 3),
(20, 20, 11, 100, 1),
(21, 21, 11, 100, 2),
(22, 22, 11, 100, 2),
(23, 23, 11, 100, 2),
(24, 24, 11, 100, 2),
(25, 25, 11, 100, 3),
(26, 26, 11, 100, 2),
(27, 27, 11, 100, 2),
(28, 28, 11, 100, 3),
(29, 29, 11, 100, 1),
(30, 30, 6, 40, 3),
(31, 31, 6, 40, 2),
(32, 32, 2, 170, 2),
(33, 33, 11, 100, 2),
(34, 33, 6, 40, 1),
(35, 33, 2, 170, 1),
(36, 33, 9, 410, 1),
(37, 34, 11, 100, 2),
(38, 34, 6, 40, 1),
(39, 34, 2, 170, 1),
(40, 34, 9, 410, 1),
(41, 35, 11, 100, 1),
(42, 35, 6, 40, 1),
(43, 36, 11, 100, 2),
(44, 36, 6, 40, 1),
(45, 36, 2, 170, 1),
(46, 36, 9, 410, 1),
(47, 37, 11, 100, 1),
(48, 38, 11, 100, 12),
(49, 39, 11, 100, 5),
(50, 40, 11, 100, 2),
(51, 41, 6, 40, 1),
(52, 42, 11, 100, 1),
(53, 43, 11, 100, 2),
(54, 43, 6, 40, 5),
(55, 44, 2, 170, 3);

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE `order_master` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `total_price` float NOT NULL,
  `coupon_code` varchar(20) NOT NULL,
  `final_price` float NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `payment_type` varchar(10) NOT NULL,
  `payment_id` varchar(100) NOT NULL,
  `order_status` int(11) NOT NULL,
  `cancel_by` enum('user','admin') NOT NULL,
  `cancel_at` datetime NOT NULL,
  `added_on` datetime NOT NULL,
  `delivered_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`id`, `user_id`, `name`, `email`, `mobile`, `address`, `total_price`, `coupon_code`, `final_price`, `zipcode`, `delivery_boy_id`, `payment_status`, `payment_type`, `payment_id`, `order_status`, `cancel_by`, `cancel_at`, `added_on`, `delivered_on`) VALUES
(1, 2, 'Vishal', 'ervishalwebdeveloper@gmail.com', '9999999999', 'Test', 240, '', 240, '110076', 0, 'pending', 'wallet', '', 5, 'admin', '2020-07-21 08:13:01', '2020-07-18 06:08:19', '0000-00-00 00:00:00'),
(2, 2, 'Vishal', 'ervishalwebdeveloper@gmail.com', '9999999999', 'test', 160, '', 160, '110076', 0, 'pending', 'wallet', '', 4, 'user', '0000-00-00 00:00:00', '2020-07-20 06:09:59', '0000-00-00 00:00:00'),
(3, 5, 'Vishal', 'phpvishal@gmail.com', '9999999999', 'Test', 120, '', 120, '110076', 0, 'pending', 'cod', '', 4, 'user', '0000-00-00 00:00:00', '2020-07-23 09:09:41', '0000-00-00 00:00:00'),
(4, 2, 'Vishal', 'ervishalwebdeveloper@gmail.com', '9999999999', 'dhoraji', 240, '', 240, '360410', 0, 'pending', 'paytm', '', 5, 'user', '2020-11-29 08:24:54', '2020-11-29 08:24:05', '0000-00-00 00:00:00'),
(5, 2, 'Vishal', 'ervishalwebdeveloper@gmail.com', '9999999999', 'dhoraji', 680, '', 680, '360410', 1, 'pending', 'cod', '', 4, 'user', '0000-00-00 00:00:00', '2020-11-29 08:26:11', '2020-11-29 08:32:42'),
(6, 2, 'Vishal', 'ervishalwebdeveloper@gmail.com', '9999999999', 'rajkot', 80, '', 80, '360410', 2, 'success', 'wallet', '', 4, 'user', '0000-00-00 00:00:00', '2020-11-29 08:30:26', '2020-11-29 08:33:07'),
(7, 2, 'Vishal', 'ervishalwebdeveloper@gmail.com', '9999999999', 'rajkot', 120, '', 120, '561456', 0, 'pending', 'paytm', '', 5, 'user', '2020-11-29 09:57:26', '2020-11-29 09:52:53', '0000-00-00 00:00:00'),
(8, 2, 'Vishal', 'ervishalwebdeveloper@gmail.com', '9999999999', 'rajkot', 120, '', 120, '639852', 1, 'pending', 'cod', '', 4, 'user', '0000-00-00 00:00:00', '2020-11-29 09:55:24', '2020-11-29 09:56:38'),
(9, 8, 'xyz', 'xyz@g.com', '1234567890', 'rah', 80, '', 80, '360410', 1, 'success', 'paytm', '', 4, 'user', '0000-00-00 00:00:00', '2020-11-29 12:50:54', '2020-11-29 01:29:48'),
(10, 8, 'xyz', 'xyz@g.com', '1234567890', 'vbvb', 200, '', 200, '365214', 1, 'success', 'cod', '', 4, 'user', '0000-00-00 00:00:00', '2020-11-29 01:29:02', '2020-11-29 01:29:53'),
(11, 7, 'vandit', 'vb@gmail.com', '1234567890', 'jdjcc', 200, '', 200, '545445', 0, 'success', 'paytm', '20201129111212800110168246602124948', 1, 'user', '0000-00-00 00:00:00', '2020-11-29 01:50:22', '0000-00-00 00:00:00'),
(12, 7, 'vandit', 'vb@gmail.com', '1234567890', 'abc', 100, '', 100, '560450', 0, 'success', 'paytm', '20201129111212800110168855502107819', 1, 'user', '0000-00-00 00:00:00', '2020-11-29 01:57:01', '0000-00-00 00:00:00'),
(13, 7, 'vandit', 'vb@gmail.com', '1234567890', 'nm', 300, '', 300, '123456', 0, 'success', 'paytm', '20201129111212800110168466402132783', 1, 'user', '0000-00-00 00:00:00', '2020-11-29 02:02:36', '0000-00-00 00:00:00'),
(14, 7, 'vandit', 'vb@gmail.com', '1234567890', 'gfh', 200, '', 200, '123456', 0, 'success', 'paytm', '20201129111212800110168075302130489', 1, 'user', '0000-00-00 00:00:00', '2020-11-29 02:05:48', '0000-00-00 00:00:00'),
(15, 7, 'vandit', 'vb@gmail.com', '1234567890', 'hhg', 200, '', 200, '454545', 0, 'success', 'paytm', '20201129111212800110168684802112265', 1, 'user', '0000-00-00 00:00:00', '2020-11-29 02:09:03', '0000-00-00 00:00:00'),
(16, 7, 'vandit', 'vb@gmail.com', '1234567890', 'hgh', 200, '', 200, '454545', 0, 'success', 'paytm', '20201129111212800110168299102145543', 1, 'user', '0000-00-00 00:00:00', '2020-11-29 02:10:28', '0000-00-00 00:00:00'),
(17, 6, 'vandit', 'vb@gmail.com', '1234567890', 'ffh', 200, '', 200, '454545', 0, 'success', 'paytm', '20201129111212800110168898002150885', 1, 'user', '0000-00-00 00:00:00', '2020-11-29 02:15:07', '0000-00-00 00:00:00'),
(18, 7, 'vandit', 'vb@gmail.com', '1234567890', 'hghg', 200, '', 200, '121212', 0, 'success', 'paytm', '20201129111212800110168514602315332', 1, 'user', '0000-00-00 00:00:00', '2020-11-29 02:24:20', '0000-00-00 00:00:00'),
(19, 7, 'vandit', 'vb@gmail.com', '1234567890', 'jhjh', 300, '', 300, '121212', 0, 'pending', 'paytm', '', 1, 'user', '0000-00-00 00:00:00', '2020-11-29 02:30:47', '0000-00-00 00:00:00'),
(20, 7, 'vandit', 'vb@gmail.com', '1234567890', 'sfsf', 100, '', 100, '123456', 0, 'pending', 'paytm', '', 1, 'user', '0000-00-00 00:00:00', '2020-11-29 02:33:15', '0000-00-00 00:00:00'),
(21, 7, 'vandit', 'vb@gmail.com', '1234567890', 'ad', 200, '', 200, '123', 3, 'success', 'paytm', '20201129111212800110168153102134026', 4, 'user', '0000-00-00 00:00:00', '2020-11-29 02:35:44', '2020-11-30 11:04:49'),
(22, 7, 'vandit', 'vb@gmail.com', '1234567890', 'hghgh', 200, '', 200, '121211', 0, 'success', 'paytm', '20201129111212800110168766102132829', 1, 'user', '0000-00-00 00:00:00', '2020-11-29 02:38:36', '0000-00-00 00:00:00'),
(23, 7, 'vandit', 'vb@gmail.com', '1234567890', 'fgfh', 200, '', 200, '121212', 0, 'success', 'paytm', '20201129111212800110168377602141585', 1, 'user', '0000-00-00 00:00:00', '2020-11-29 02:40:39', '0000-00-00 00:00:00'),
(24, 7, 'vandit', 'vb@gmail.com', '1234567890', 'jhg', 200, '', 200, '121212', 0, 'success', 'paytm', '20201129111212800110168984802124990', 1, 'user', '0000-00-00 00:00:00', '2020-11-29 02:42:50', '0000-00-00 00:00:00'),
(25, 7, 'vandit', 'vb@gmail.com', '1234567890', 'jhj', 300, '', 300, '545455', 0, 'success', 'paytm', '20201129111212800110168591802138518', 5, 'user', '2020-11-30 10:22:04', '2020-11-29 02:45:06', '0000-00-00 00:00:00'),
(26, 72, 'vandit', 'vb@gmail.com', '1234567890', 'hgh', 200, '', 200, '121212', 0, 'pending', 'paytm', '', 1, 'user', '0000-00-00 00:00:00', '2020-11-29 02:51:51', '0000-00-00 00:00:00'),
(27, 72, 'vandit1', 'vb@gmail.com', '1234567890', 'kk', 200, '', 200, '121212', 3, 'success', 'paytm', '20201129111212800110168613002137834', 4, 'user', '0000-00-00 00:00:00', '2020-11-29 02:53:38', '2020-11-30 10:21:02'),
(28, 72, 'abcd', 'abcd@gmail.com', '65656652', 'kjk', 300, '', 300, '121212', 1, 'success', 'paytm', '20201129111212800110168529702151843', 4, 'user', '0000-00-00 00:00:00', '2020-11-29 02:56:59', '2020-11-30 09:32:58'),
(29, 7, 'vandit', 'vb@gmail.com', '9427391850', 'dhoraji', 100, '', 100, '360410', 3, 'success', 'wallet', '', 4, 'user', '0000-00-00 00:00:00', '2020-12-02 08:26:38', '2020-12-02 09:05:33'),
(30, 7, 'vandit', 'vb@gmail.com', '9427391850', 'dhoraji,rajkot', 120, '', 120, '364545', 3, 'success', 'wallet', '', 4, 'user', '0000-00-00 00:00:00', '2020-12-02 08:43:55', '2020-12-02 09:05:45'),
(31, 7, 'vandit', 'vb@gmail.com', '9427391850', 'a', 80, '', 80, '363636', 3, 'success', 'wallet', '', 4, 'user', '0000-00-00 00:00:00', '2020-12-02 08:46:53', '2020-12-02 09:05:43'),
(32, 7, 'vandit', 'bhokal86@gmail.com', '9427391850', 'hhhh', 340, '', 340, '360410', 3, 'success', 'wallet', '', 4, 'user', '0000-00-00 00:00:00', '2020-12-04 03:29:16', '2020-12-05 02:25:10'),
(33, 7, 'vandit', 'beraniraj2503@gmail.com', '9427391850', 'ghgfgf', 820, '', 820, '998989', 0, 'pending', 'cod', '', 1, 'user', '0000-00-00 00:00:00', '2020-12-05 02:18:55', '0000-00-00 00:00:00'),
(34, 80, 'niraj', 'beraniraj2503@gmail.com', '1234567890', 'hyjhgjh', 820, '', 820, '565656', 3, 'success', 'cod', '', 4, 'user', '0000-00-00 00:00:00', '2020-12-05 02:21:00', '2020-12-05 02:25:20'),
(35, 80, 'niraj', 'beraniraj2503@gmail.com', '1234567890', 'fdfhv', 140, '', 140, '454545', 3, 'success', 'wallet', '', 4, 'user', '0000-00-00 00:00:00', '2020-12-05 02:23:16', '2020-12-05 02:24:36'),
(36, 82, 'niraj', 'beraniraj2503@gmail.com', '6354840544', 'jhgjh', 820, '', 820, '454554', 0, 'success', 'paytm', '20201205111212800110168225402163740', 1, 'user', '0000-00-00 00:00:00', '2020-12-05 02:30:22', '0000-00-00 00:00:00'),
(37, 82, 'niraj', 'beraniraj2503@gmail.com', '6354840544', 'kjkjk', 100, '', 100, '454545', 0, 'pending', 'cod', '', 1, 'user', '0000-00-00 00:00:00', '2020-12-05 10:11:25', '0000-00-00 00:00:00'),
(38, 82, 'niraj', 'beraniraj2503@gmail.com', '6354840544', 'jhhik', 1200, '', 1200, '454555', 0, 'pending', 'cod', '', 1, 'user', '0000-00-00 00:00:00', '2020-12-05 10:14:15', '0000-00-00 00:00:00'),
(39, 82, 'niraj', 'beraniraj2503@gmail.com', '6354840544', 'jhjh', 500, '', 500, '454545', 0, 'pending', 'cod', '', 1, 'user', '0000-00-00 00:00:00', '2020-12-05 10:17:40', '0000-00-00 00:00:00'),
(40, 82, 'niraj', 'beraniraj2503@gmail.com', '6354840544', 'ljj', 200, '', 200, '454545', 3, 'pending', 'cod', '', 1, 'user', '0000-00-00 00:00:00', '2020-12-05 10:19:36', '0000-00-00 00:00:00'),
(41, 82, 'niraj', 'beraniraj2503@gmail.com', '6354840544', 'kjkj', 40, '', 40, '454545', 0, 'pending', 'cod', '', 1, 'user', '0000-00-00 00:00:00', '2020-12-05 10:21:55', '0000-00-00 00:00:00'),
(42, 7, 'vandit', 'vb@gmail.com', '9427391850', 'jhkhkjhk', 100, '', 100, '454545', 0, 'pending', 'cod', '', 1, 'user', '0000-00-00 00:00:00', '2020-12-06 01:15:47', '0000-00-00 00:00:00'),
(43, 7, 'vandit', 'vb@gmail.com', '9427391850', 'jhdjh', 400, '', 400, '545454', 3, 'success', 'cod', '', 4, 'user', '0000-00-00 00:00:00', '2020-12-15 09:14:19', '2020-12-15 09:19:50'),
(44, 7, 'vandit', 'vb@gmail.com', '9427391850', '6461231', 510, '', 510, '454545', 1, 'success', 'cod', '', 4, 'user', '0000-00-00 00:00:00', '2021-01-10 02:18:41', '2021-01-20 07:31:28');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `order_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `order_status`) VALUES
(1, 'Pending'),
(2, 'Cooking '),
(3, 'On the Way'),
(4, 'Delivered'),
(5, 'Cancel');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `dish_detail_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `user_id`, `order_id`, `dish_detail_id`, `rating`) VALUES
(1, 1, 6, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `cart_min_price` int(11) NOT NULL,
  `cart_min_price_msg` varchar(250) NOT NULL,
  `website_close` int(11) NOT NULL,
  `wallet_amt` int(11) NOT NULL,
  `website_close_msg` varchar(250) NOT NULL,
  `referral_amt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `cart_min_price`, `cart_min_price_msg`, `website_close`, `wallet_amt`, `website_close_msg`, `referral_amt`) VALUES
(1, 40, 'Cart min price will be 50 rs', 0, 0, 'Website Closed for today ', 50);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `email_verify` int(11) NOT NULL,
  `rand_str` varchar(20) NOT NULL,
  `referral_code` varchar(20) NOT NULL,
  `from_referral_code` varchar(20) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobile`, `password`, `status`, `email_verify`, `rand_str`, `referral_code`, `from_referral_code`, `added_on`) VALUES
(2, 'Vishal', 'ervishalwebdeveloper@gmail.com', '9999999999', '$2y$10$cZ6sSDVYUINCnynmB3Tbuend7e7bRqgCPeD.RPmxdRucxKhbSo/52', 1, 1, 'lmkaetixyrzqoqy', 'lmkaetixyrzqoqds', '', '2020-07-18 05:11:37'),
(5, 'Vishal', 'phpvishal@gmail.com', '9999999999', '$2y$10$wWBWMJTK37jkyLujN8YQoOVfQQt/3.B9ruoaNkjruQEwz4ZVfvNJa', 1, 1, 'zdoxxhajyeqtgpp', 'lhqtkjofzevfdai', 'lmkaetixyrzqoqds', '2020-07-23 08:48:08'),
(6, 'niraj', 'beraniraj25032@gmail.com', '6354840544', '$2y$10$Kt/WOIa8NHnQ09IVabcJaOimgugTuNzmjvB35CMCyqyTuZr2KYXOK', 1, 1, 'jerqnbymzyghfzs', 'fzbmjwzjyvxosue', '', '2020-11-29 08:09:58'),
(7, 'vandit', 'vb@gmail.com', '9427391850', '$2y$10$K6BLJrdwaA.8ZbZBCHNRRO/7JafrAXl8Z9pcBwqG20q3gN6BVM.y.', 1, 1, 'gkqvnpwdmbhjcfz', 'afrkbscnalmvuyj', '', '2020-11-29 10:17:25'),
(8, 'xyz', 'xyz@g.com', '1234567890', '$2y$10$RdvvmbvSAyjUkv20rhtCMu/4nRLN4wQ2bvB0h5qkme1cQ54lRn0Qe', 1, 1, 'qnbhwrjmmjtgwbf', 'oddighobspigwvq', '', '2020-11-29 12:36:56'),
(71, 'jhk', 'hjhj@g.com', '65656', '$2y$10$FkPDwZI2c20AgPNtAuN2HeCLEX/qcXonLZ1aRQzJ/bI9iGGFjV3f.', 1, 1, 'urgbwablpymiwfq', 'vrytgrngfkzaixh', '', '2020-11-29 02:49:29'),
(72, 'abcd', 'abcd@gmail.com', '65656652', '$2y$10$AiCxe1sQ9DQEvlSkbGYE.exEjcg8qR1gerG4A9eHGZKSBOko4qmJe', 1, 1, 'kqdmphyhlfjowcs', 'jztosdgithlxrlu', '', '2020-11-29 02:50:11'),
(81, 'sultan', 'bhokal86@gmail.com', '1234567890', '$2y$10$b4OB4LnjkugneurjcbbOHe62fsWFX7Wkaldle/JUblZJKazYHlUl.', 1, 0, 'zukewytacwkpqvm', 'wedhoiyfntygvuc', '', '2020-12-04 03:30:38'),
(82, 'niraj', 'beraniraj2503@gmail.com', '6354840544', '$2y$10$uIZ9hdQvK/pOnqAVAVu8dePXM2A/EH4STzZXCQ1xypFDDUs6LOCQ6', 1, 1, 'nvzrtqfkzjllshk', 'gxagusldjhiamjp', '', '2020-12-05 02:27:24'),
(83, 'gghh', 'er.darshanghetiya@gmail.com', '4567891230', '$2y$10$i2VIyFOjftEqmtZCFmyCdejyjwyD8ihvCljBrVNA6I1YXFGYLVGIy', 1, 0, 'etpwlfskcelhbmo', 'urhmzvxbicyjzva', '', '2020-12-05 10:23:20'),
(84, 'Vandit', 'vanditbera@gmail.com', '1111111111', '$2y$10$f5Wo/7Fs/B9IOGmHJkTgu.SEyxddoC8a12EfSCH5b9hjQL/dhRxiG', 1, 1, 'hwmjvnoygipgyzq', 'norteqlspanfbxh', '', '2021-04-02 04:47:52');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amt` int(11) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `type` enum('in','out') NOT NULL,
  `payment_id` varchar(50) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `user_id`, `amt`, `msg`, `type`, `payment_id`, `added_on`) VALUES
(2, 2, 50, 'Registration', 'in', '', '2020-07-18 05:11:38'),
(4, 2, 50, 'Shoping', 'out', '', '0000-00-00 00:00:00'),
(5, 2, 100, 'Added', 'in', '', '0000-00-00 00:00:00'),
(7, 2, 100, 'Added', 'in', '', '2020-07-18 05:58:29'),
(8, 2, 20, 'Added', 'in', '', '2020-07-18 05:59:02'),
(9, 2, 15, 'Added', 'in', '', '2020-07-18 06:00:35'),
(10, 2, 30, 'Added', 'in', '', '2020-07-18 06:01:17'),
(11, 2, 10, 'Added', 'in', '20200718111212800110168602301710786', '2020-07-18 06:04:04'),
(13, 2, 160, 'Order Id-2', 'out', '', '2020-07-18 06:09:59'),
(14, 2, 800, 'Added', 'in', '20200718111212800110168644701732407', '2020-07-18 06:17:19'),
(15, 3, 0, 'Register', 'in', '', '2020-07-18 08:00:53'),
(16, 2, 200, 'Order Id-3', 'out', '', '2020-07-19 04:29:04'),
(17, 2, 200, 'Order Id-4', 'out', '', '2020-07-19 04:30:51'),
(18, 3, 100, 'Test msg', 'in', '', '2020-07-21 08:22:33'),
(19, 2, 200, 'Test Msg', 'in', '', '2020-07-21 08:22:46'),
(22, 2, 50, 'Referral Amt from phpvishal@gmail.com', 'in', '', '2020-07-23 09:12:28'),
(23, 2, 80, 'Order Id-6', 'out', '', '2020-11-29 08:30:26'),
(24, 6, 500, 'hi', 'in', '', '2020-11-29 10:08:07'),
(25, 2, 700, 'hi', 'in', '', '2020-11-29 10:08:30'),
(26, 7, 5000, 'hyyy vb', 'in', '', '2020-11-30 09:34:37'),
(27, 7, 100, 'Order Id-29', 'out', '', '2020-12-02 08:26:38'),
(28, 7, 120, 'Order Id-30', 'out', '', '2020-12-02 08:43:55'),
(29, 7, 80, 'Order Id-31', 'out', '', '2020-12-02 08:46:53'),
(30, 7, 340, 'Order Id-32', 'out', '', '2020-12-04 03:29:16'),
(31, 80, 1000, 'hyyy', 'in', '', '2020-12-05 02:22:32'),
(32, 80, 140, 'Order Id-35', 'out', '', '2020-12-05 02:23:16'),
(33, 84, 4999, 'Added', 'in', '20210402111212800110168955302490666', '2021-04-02 04:51:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_code`
--
ALTER TABLE `coupon_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish`
--
ALTER TABLE `dish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish_cart`
--
ALTER TABLE `dish_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish_details`
--
ALTER TABLE `dish_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupon_code`
--
ALTER TABLE `coupon_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dish`
--
ALTER TABLE `dish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `dish_cart`
--
ALTER TABLE `dish_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `dish_details`
--
ALTER TABLE `dish_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
