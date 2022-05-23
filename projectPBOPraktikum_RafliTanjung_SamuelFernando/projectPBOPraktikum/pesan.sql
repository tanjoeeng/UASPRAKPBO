-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Bulan Mei 2022 pada 09.05
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bismilah`
--
CREATE DATABASE IF NOT EXISTS `bismilah` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bismilah`;
--
-- Database: `fitria`
--
CREATE DATABASE IF NOT EXISTS `fitria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fitria`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama`, `alamat`) VALUES
(345667, 'amelian', 'telagasari'),
(20106383, 'Ntiw', 'Boyolali');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`);
--
-- Database: `friedrice`
--
CREATE DATABASE IF NOT EXISTS `friedrice` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `friedrice`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sales`
--

INSERT INTO `sales` (`id`, `subtotal`, `pay`, `balance`) VALUES
(1, 20000, 50000, 30000),
(2, 115000, 150000, 35000),
(3, 20000, 50000, 30000),
(4, 85000, 100000, 15000),
(5, 50000, 100000, 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales_product`
--

CREATE TABLE `sales_product` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `ricetype` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sales_product`
--

INSERT INTO `sales_product` (`id`, `sales_id`, `ricetype`, `price`, `qty`, `total`) VALUES
(1, 1, 'Thai Fried Rice', 20000, 1, 20000),
(2, 2, 'Thai Fried Rice', 20000, 2, 40000),
(3, 2, 'Basil Fried Rice', 25000, 3, 75000),
(4, 3, 'Thai Fried Rice', 20000, 1, 20000),
(5, 4, 'Crab Fried Rice', 25000, 1, 25000),
(6, 4, 'Combination Fried Rice', 30000, 2, 60000),
(7, 5, 'Pineapple Fried Rice', 25000, 2, 50000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sales_product`
--
ALTER TABLE `sales_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `sales_product`
--
ALTER TABLE `sales_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `friedriceshop`
--
CREATE DATABASE IF NOT EXISTS `friedriceshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `friedriceshop`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sales`
--

INSERT INTO `sales` (`id`, `subtotal`, `pay`, `balance`) VALUES
(1, 400, 1000, 600),
(2, 4000, 10000, 6000),
(3, 4000, 10000, 6000),
(4, 40000, 100000, 60000),
(5, 40000, 100000, 60000),
(6, 50000, 100000, 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales_product`
--

CREATE TABLE `sales_product` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `ricetype` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sales_product`
--

INSERT INTO `sales_product` (`id`, `sales_id`, `ricetype`, `price`, `qty`, `total`) VALUES
(1, 1, 'Thai Fried Rice', 100, 2, 200),
(2, 1, 'Basil Fried Rice', 200, 1, 200),
(3, 2, 'Thai Fried Rice', 2000, 2, 4000),
(4, 3, 'Thai Fried Rice', 2000, 2, 4000),
(5, 4, 'Thai Fried Rice', 20000, 2, 40000),
(6, 5, 'Thai Fried Rice', 10000, 2, 20000),
(7, 5, 'Basil Fried Rice', 20000, 1, 20000),
(8, 6, 'Thai Fried Rice', 25000, 2, 50000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sales_product`
--
ALTER TABLE `sales_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `sales_product`
--
ALTER TABLE `sales_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(25) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'password'),
('superuser', 'it is a password'),
('superuser', 'it is a password'),
('superuser', 'it is a password');

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `title`, `author`) VALUES
(1, 'Java How to Program', 'Harvey M.deitel'),
(2, 'Storytelling with Data', 'Cole N. Knaflic'),
(3, 'Dunia Sophie', 'Jostein Gaarder'),
(8, 'Dunia Sophie', 'Jostein Gaarder');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `libraryapp`
--
CREATE DATABASE IF NOT EXISTS `libraryapp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `libraryapp`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'password'),
('superuser', 'it is a password');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `penulis` varchar(50) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `thn_terbit` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul`, `penulis`, `penerbit`, `thn_terbit`, `harga`) VALUES
(1, 'Java How to Program', 'Harvey M.deitel', 'PEARSON EDUCATION', 2007, 351000),
(2, 'Storytelling with Data', 'Cole N. Knaflic', 'Wiley', 2015, 294000),
(3, 'Dunia Sophie', 'Jostein Gaarder', 'Mizan', 1996, 135000),
(9, 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', 2005, 75000),
(10, 'Surat Kecil Untuk Tuhan', 'Agnes Davonar', 'Inandra Published', 2011, 46750);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Database: `mahasiswa`
--
CREATE DATABASE IF NOT EXISTS `mahasiswa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mahasiswa`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mhs`
--

CREATE TABLE `mhs` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` varchar(30) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mhs`
--

INSERT INTO `mhs` (`id`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`) VALUES
(2, 'Citra', 'Perempuan', 'Sukabumi', '12-08-2002', 'Bogor'),
(3, 'Fitria', 'Perempuan', 'Karawang', '19-12-2001', 'Karawang');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mhs`
--
ALTER TABLE `mhs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `mobil`
--
CREATE DATABASE IF NOT EXISTS `mobil` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mobil`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(4) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(12) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `email`, `alamat`, `telp`, `username`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'jogja', '08123456789', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_supir` int(11) NOT NULL,
  `jasa_supir` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` int(4) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `nama`) VALUES
(1, 'MPV'),
(2, 'SUV'),
(3, 'Sedan'),
(4, 'City Car'),
(5, 'Double Cabin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `id_konfirmasi` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `bukti` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konfirmasi`
--

INSERT INTO `konfirmasi` (`id_konfirmasi`, `id_transaksi`, `bukti`) VALUES
(1, 1, '104012020184503.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `id_jenis` int(4) NOT NULL,
  `no_mobil` varchar(10) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `nama_mobil` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `harga` int(7) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `id_jenis`, `no_mobil`, `merk`, `nama_mobil`, `gambar`, `harga`, `status`) VALUES
(1, 1, 'F 3134 RI', 'Toyota', 'Avanza', '03012020235744.jpg', 500000, '1'),
(3, 1, 'F 69 SX', 'Nissan', 'Grand Livina', '04012020000026.jpg', 510000, '0'),
(5, 4, 'F 1111 IL', 'Honda', 'Jazz', '04012020000301.jpg', 600000, '1'),
(6, 3, 'F 456 UV', 'Honda', 'Civic', '04012020000521.jpg', 650000, '1'),
(7, 2, 'F 44 X', 'Mitsubishi', 'Pajero Sport', '04012020000701.jpg', 700000, '1'),
(8, 5, 'F 9821 YBY', 'Ford', 'Ranger', '04012020001126.jpg', 710000, '1'),
(9, 3, 'T 35 LA', 'Tesla', 'Model X', '04012020001437.jpg', 780000, '1'),
(10, 2, 'A 145 ZW', 'Wuling', 'Almaz', '04012020001710.jpg', 680000, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `no_ktp` char(16) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_telp` char(12) NOT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `no_ktp`, `nama`, `email`, `no_telp`, `alamat`, `username`, `password`) VALUES
(1, '5467867675846', 'Asep Gumasep', 'asep@asep.com', '089669696969', 'Cikole', 'asep', 'dc855efb0dc7476760afaa1b281665f1'),
(2, '5623157312002', 'Fitria nur Sa\'adah', 'fitria@gmai.com', '0895435698', 'CKM', 'fitria', 'ef208a5dfcfc3ea9941d7a6c43841784');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supir`
--

CREATE TABLE `supir` (
  `id_supir` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `telp` char(12) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supir`
--

INSERT INTO `supir` (`id_supir`, `nama`, `telp`, `alamat`, `status`) VALUES
(1, 'Rendi', '081551155115', 'Ngawi', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `tgl_sewa` datetime NOT NULL,
  `tgl_ambil` datetime DEFAULT NULL,
  `tgl_kembali` datetime DEFAULT NULL,
  `lama` tinyint(1) NOT NULL,
  `total_harga` int(7) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `jaminan` varchar(30) NOT NULL,
  `denda` int(7) DEFAULT 0,
  `jatuh_tempo` datetime NOT NULL,
  `konfirmasi` enum('0','1') DEFAULT NULL,
  `pembatalan` enum('0','1') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `id_mobil`, `tgl_sewa`, `tgl_ambil`, `tgl_kembali`, `lama`, `total_harga`, `status`, `jaminan`, `denda`, `jatuh_tempo`, `konfirmasi`, `pembatalan`) VALUES
(1, 1, 3, '2020-01-04 18:44:30', '2020-01-04 18:44:30', NULL, 1, 510000, '0', 'Sertifikat Rumah', NULL, '2020-01-04 21:44:30', '1', '0'),
(2, 2, 1, '2022-04-12 14:58:09', '2020-02-20 14:58:09', NULL, 2, 1000000, '0', 'STNK', NULL, '2022-04-12 17:58:09', '0', '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `fk_transaksi` (`id_transaksi`),
  ADD KEY `fk_supir` (`id_supir`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id_konfirmasi`),
  ADD KEY `fk_transaksi` (`id_transaksi`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`),
  ADD KEY `fk_jenis` (`id_jenis`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `supir`
--
ALTER TABLE `supir`
  ADD PRIMARY KEY (`id_supir`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `fk_pelanggan` (`id_pelanggan`),
  ADD KEY `fk_mobil` (`id_mobil`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id_jenis` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id_konfirmasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `supir`
--
ALTER TABLE `supir`
  MODIFY `id_supir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaksi_ibfk_3` FOREIGN KEY (`id_supir`) REFERENCES `supir` (`id_supir`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD CONSTRAINT `konfirmasi_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD CONSTRAINT `mobil_ibfk_1` FOREIGN KEY (`id_jenis`) REFERENCES `jenis` (`id_jenis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_mobil`) REFERENCES `mobil` (`id_mobil`) ON DELETE NO ACTION ON UPDATE CASCADE;
--
-- Database: `parkir`
--
CREATE DATABASE IF NOT EXISTS `parkir` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `parkir`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `parkir`
--

CREATE TABLE `parkir` (
  `jenis` varchar(10) NOT NULL,
  `no_parkir` varchar(20) NOT NULL,
  `masuk` datetime NOT NULL,
  `keluar` datetime DEFAULT NULL,
  `bayar` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `parkir`
--

INSERT INTO `parkir` (`jenis`, `no_parkir`, `masuk`, `keluar`, `bayar`) VALUES
('Mobil', 'C0001', '2022-04-17 13:43:59', NULL, NULL),
('Motor', 'M0002', '2022-04-17 13:45:51', NULL, NULL),
('Mobil', 'C0003', '2022-04-17 13:53:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `tgl` date NOT NULL,
  `bayar` int(10) NOT NULL,
  `user` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `kode` varchar(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `pwd` varchar(10) NOT NULL,
  `status` varchar(15) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `hp` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`kode`, `username`, `pwd`, `status`, `alamat`, `hp`) VALUES
('P0001', 'admin', '123', 'Admin', 'JL. K.H Adam', '08113990565');
--
-- Database: `pesan`
--
CREATE DATABASE IF NOT EXISTS `pesan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pesan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(2, 'fitria', '12345'),
(3, 'fani', 'fani');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data untuk tabel `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'rumahsakit', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":\"pasien\",\"table_structure[]\":\"pasien\",\"table_data[]\":\"pasien\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'database', 'friedriceshop', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"sales\",\"sales_product\"],\"table_structure[]\":[\"sales\",\"sales_product\"],\"table_data[]\":[\"sales\",\"sales_product\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(3, 'root', 'database', 'library', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"admin\",\"books\"],\"table_structure[]\":[\"admin\",\"books\"],\"table_data[]\":[\"admin\",\"books\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(4, 'root', 'server', 'pesan', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"bismilah\",\"fitria\",\"friedrice\",\"friedriceshop\",\"library\",\"libraryapp\",\"mahasiswa\",\"mobil\",\"parkir\",\"pesan\",\"phpmyadmin\",\"puskesmas\",\"rental_mobil\",\"rumahsakit\",\"rumah_sakit\",\"sewadvd2\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"pesan\",\"table\":\"login\"},{\"db\":\"friedrice\",\"table\":\"login\"},{\"db\":\"friedrice\",\"table\":\"sales\"},{\"db\":\"friedrice\",\"table\":\"sales_product\"},{\"db\":\"library\",\"table\":\"admin\"},{\"db\":\"libraryapp\",\"table\":\"buku\"},{\"db\":\"library\",\"table\":\"books\"},{\"db\":\"libraryapp\",\"table\":\"admin\"},{\"db\":\"friedriceshop\",\"table\":\"sales\"},{\"db\":\"friedriceshop\",\"table\":\"sales_product\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data untuk tabel `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'library', 'books', '{\"sorted_col\":\"`books`.`id`  ASC\",\"CREATE_TIME\":\"2022-04-28 18:57:53\",\"col_order\":[0,1,2],\"col_visib\":[1,1,1]}', '2022-04-28 16:34:28'),
('root', 'libraryapp', 'buku', '{\"sorted_col\":\"`buku`.`id`  ASC\"}', '2022-04-29 06:29:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-05-21 07:04:54', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `puskesmas`
--
CREATE DATABASE IF NOT EXISTS `puskesmas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `puskesmas`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bidang`
--

CREATE TABLE `tbl_bidang` (
  `id_bidang` int(3) NOT NULL,
  `nama_bidang` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_bidang`
--

INSERT INTO `tbl_bidang` (`id_bidang`, `nama_bidang`) VALUES
(1, 'Paramedis'),
(2, 'Apotek'),
(3, 'Administrasi'),
(5, 'Bendahara');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_diagnosa_penyakit`
--

CREATE TABLE `tbl_diagnosa_penyakit` (
  `kode_diagnosa` varchar(6) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `ciri_ciri_penyakit` text NOT NULL,
  `keterangan` text NOT NULL,
  `ciri_ciri_umum` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_diagnosa_penyakit`
--

INSERT INTO `tbl_diagnosa_penyakit` (`kode_diagnosa`, `nama_penyakit`, `ciri_ciri_penyakit`, `keterangan`, `ciri_ciri_umum`) VALUES
('Db-37', 'Diabetes', 'Kebanyakan Gula Darah', 'Penyakit Tingkat Tinggi', 'Kebanyakan Gula Darah'),
('Gg-39', 'Gigi Berlubang', 'Mengalami Linu DI Gigi', 'Penyakit Bagian Mulut', 'Mengalami Linu DI Gigi'),
('HB-39', 'Hidung Bengkak', 'Alergi Obat', 'Penyakit Tingkat Menengah', 'Hidung Berwarna Kemerahan'),
('KR-292', 'Mata Rabun', 'Mata Mengalami Sedikit Pergeseran Di Bagian Retina', 'Penyakit Tingkat Tinggi', 'Mata Mengalami Penurunan Penglihatan'),
('Kt-18', 'Cacar', 'Gatal', 'Berbahaya', 'Gatal'),
('S-9956', 'Kirarawit', 'Kulit Berwarna Bercak Kemerahan', 'Penyakit Ini Berhubungan Dengan Saraf', 'Kulit Berwarna Bercak Kemerahan'),
('Tk-67', 'Tuberklosis', 'Mengalami Sesak Nafas', 'Disertai Panas dan Flu', 'Disertai Panas dan Flu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dokter`
--

CREATE TABLE `tbl_dokter` (
  `kode_dokter` varchar(4) NOT NULL,
  `nama_dokter` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `nomor_induk_dokter` varchar(20) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` varchar(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `id_poli` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_dokter`
--

INSERT INTO `tbl_dokter` (`kode_dokter`, `nama_dokter`, `jenis_kelamin`, `nomor_induk_dokter`, `tempat_lahir`, `tgl_lahir`, `alamat`, `id_poli`) VALUES
('IA-0', 'Fitri', 'Perempuan', '4929029033291', 'CIREBON', '26-08-1995', 'Kalimalang', '4'),
('K-02', 'Sunarya', 'Laki-Laki', '71816828738790', 'Majalengka', '12-07-1977', 'Sukaluyu', '2'),
('K-12', 'Karsa', 'Laki-Laki', '71816838738718', 'Sidoarjo', '15-06-1982', 'Adiarsa', '1'),
('S-23', 'Samsul', 'Laki-Laki', '48916838738757', 'CIimahi', '26-11-1993', 'Ciraos', '1'),
('S-24', 'Maryudi', 'Laki-Laki', '71816838888718', 'Cepu', '21-08-1993', 'Santiong', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hak_akses`
--

CREATE TABLE `tbl_hak_akses` (
  `id` int(2) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_hak_akses`
--

INSERT INTO `tbl_hak_akses` (`id`, `id_user_level`, `id_menu`) VALUES
(19, 1, 3),
(30, 1, 2),
(31, 1, 10),
(32, 1, 11),
(33, 1, 12),
(34, 1, 13),
(35, 1, 14),
(36, 1, 15),
(37, 1, 16),
(38, 1, 17),
(39, 1, 18),
(40, 1, 19),
(41, 1, 20),
(42, 1, 21),
(43, 1, 1),
(44, 1, 22),
(45, 1, 23),
(46, 1, 24),
(47, 1, 9),
(48, 1, 25),
(49, 1, 26),
(50, 1, 27),
(51, 1, 28),
(52, 1, 29),
(53, 1, 30),
(54, 1, 31),
(55, 1, 32),
(56, 1, 33),
(57, 1, 34),
(58, 1, 35),
(59, 1, 36),
(60, 1, 40),
(61, 1, 37),
(62, 1, 38),
(63, 1, 39),
(64, 1, 41),
(65, 1, 42),
(66, 1, 43),
(67, 1, 44),
(68, 1, 46),
(72, 2, 21),
(74, 2, 23),
(76, 1, 47),
(77, 1, 48),
(78, 1, 49),
(79, 3, 33),
(80, 3, 36),
(81, 1, 50),
(82, 3, 50),
(84, 3, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jabatan`
--

CREATE TABLE `tbl_jabatan` (
  `id_jabatan` int(2) NOT NULL,
  `nama_jabatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jabatan`
--

INSERT INTO `tbl_jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'Staff Apotek'),
(2, 'Staff Administrasi'),
(3, 'Kepala Puskesmas'),
(4, 'Staff Paramedis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jadwal_praktek_dokter`
--

CREATE TABLE `tbl_jadwal_praktek_dokter` (
  `id_jadwal` int(2) NOT NULL,
  `kode_dokter` varchar(4) NOT NULL,
  `hari` varchar(13) NOT NULL,
  `jam_mulai` varchar(13) NOT NULL,
  `jam_selesai` varchar(13) NOT NULL,
  `id_poli` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jadwal_praktek_dokter`
--

INSERT INTO `tbl_jadwal_praktek_dokter` (`id_jadwal`, `kode_dokter`, `hari`, `jam_mulai`, `jam_selesai`, `id_poli`) VALUES
(6, 'K-02', 'Rabu', '14.30', '16.30', 2),
(7, 'S-23', 'Senin', '07.30', '11.30', 1),
(8, 'S-24', 'Sabtu', '07.30', '11.00', 2),
(9, 'K-12', 'Kamis', '08.00', '11.00', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kesehatan_ibu_anak`
--

CREATE TABLE `tbl_kesehatan_ibu_anak` (
  `id_kia` int(5) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `no_bpjs` varchar(20) NOT NULL,
  `status_pasien` varchar(10) NOT NULL,
  `nama_operasi` varchar(50) NOT NULL,
  `biaya` int(11) NOT NULL,
  `ditangani_oleh` enum('dokter','petugas','dokter dan petugas') NOT NULL,
  `dibayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `keterangan` varchar(13) NOT NULL,
  `tgl_tindakan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kesehatan_ibu_anak`
--

INSERT INTO `tbl_kesehatan_ibu_anak` (`id_kia`, `nama_pasien`, `no_bpjs`, `status_pasien`, `nama_operasi`, `biaya`, `ditangani_oleh`, `dibayar`, `kembalian`, `keterangan`, `tgl_tindakan`) VALUES
(11, 'Yulia', 'Yulia', 'Umum', 'Penanganan Persalinan', 180000, 'dokter', 200000, 20000, 'Berbayar', '26-07-2018'),
(12, 'Maulida Fitria', 'Maulida Fitria', 'BPJS', 'Pemeriksaan Ibu Hamil', 0, 'dokter', 0, 0, 'Gratis', '26-07-2018'),
(13, 'Yulia', 'Yulia', 'BPJS', 'Pemeriksaan Ibu Hamil', 0, 'dokter', 0, 0, 'Gratis', '27-07-2018'),
(14, 'Diana', 'Diana', 'BPJS', 'Penanganan Persalinan', 0, 'dokter', 0, 0, 'Gratis', '30-07-2018');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_laboratorium`
--

CREATE TABLE `tbl_laboratorium` (
  `id_lab` int(3) NOT NULL,
  `nama_alat_lab` varchar(50) NOT NULL,
  `jenis_alat_lab` varchar(50) NOT NULL,
  `status_alat_lab` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id_menu` int(3) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `is_main_menu` int(3) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL COMMENT 'y=yes,n=no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_menu`
--

INSERT INTO `tbl_menu` (`id_menu`, `title`, `url`, `icon`, `is_main_menu`, `is_aktif`) VALUES
(1, 'DATA DOKTER', 'kelolamenu', 'fa fa-server', 0, 'n'),
(2, 'KELOLA PENGGUNA', 'user', 'fa fa-user-o', 0, 'y'),
(3, 'level PENGGUNA', 'userlevel', 'fa fa-users', 0, 'y'),
(15, 'DATA PARAMEDIS', 'paramedis', 'fa fa-graduation-cap', 22, 'y'),
(19, 'DATA JABATAN', 'jabatan', 'fa fa-area-chart', 22, 'y'),
(20, 'DATA BIDANG', 'bidang', 'fa fa-user-circle', 22, 'y'),
(21, 'DATA PEGAWAI', 'pegawai', 'fa fa-user-circle', 0, 'y'),
(22, 'DATA MASTER', '#', 'fa fa-id-card', 0, 'y'),
(23, 'DATA POLI', 'poli', 'fa fa-bed', 22, 'y'),
(27, 'DATA DOKTER', 'dokter', 'fa fa-graduation-cap', 0, 'y'),
(29, 'JADWAL PRAKTEK DOKTER', 'jadwalpraktek', 'fa fa-calendar', 0, 'y'),
(31, 'DATA PASIEN', 'pasien', 'fa fa-user', 0, 'y'),
(33, 'DATA PENDAFTARAN', 'pendaftaran', 'fa fa-sign-in', 0, 'y'),
(34, 'DATA DIAGNOSA', 'diagnosa', 'fa fa-id-card', 0, 'y'),
(36, 'DATA TINDAKAN', 'tindakan', 'fa fa-flask', 0, 'y'),
(37, 'STOK OBAT', 'stokobat', 'fa fa-bed', 40, 'y'),
(38, 'PENGADAAN OBAT', 'pengadaanobat', 'fa fa-bed', 40, 'y'),
(39, 'PENGELUARAN OBAT', 'pengeluaranobat', 'fa fa-calendar', 40, 'y'),
(40, 'DATA OBAT', 'dataobat', 'fa fa-card', 0, 'y'),
(41, 'DATA SUPPLIER', 'supplier', 'fa fa-bed', 0, 'y'),
(42, 'DATA OPERASI', 'operasi', 'fa fa-bed', 44, 'y'),
(43, 'Penanganan Operasi', 'penangananoperasi', 'fa fa-card', 44, 'y'),
(44, 'DATA TIND. OPERASI', '#', 'fa fa-bed', 0, 'y'),
(46, 'DATA OBAT-OBATAN', 'dataobat', 'fa fa-user', 40, 'y'),
(48, 'DATA POLI KIA', 'polikia', 'fa fa-graduation-cap', 0, 'y'),
(49, 'DATA PERBAIKAN GIZI', 'perbaikangizi', 'fa fa-user', 0, 'y'),
(50, 'DATA TINDAKAN BEROBAT', 'tindakanberobat', 'fa fa-graduation-cap', 0, 'y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_obat`
--

CREATE TABLE `tbl_obat` (
  `kode_obat` varchar(5) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `jenis_obat` varchar(50) NOT NULL,
  `dosis_aturan_obat` varchar(40) NOT NULL,
  `satuan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_obat`
--

INSERT INTO `tbl_obat` (`kode_obat`, `nama_obat`, `jenis_obat`, `dosis_aturan_obat`, `satuan`) VALUES
('A-282', 'Anexsamol', 'Kapsul', '2x1 Sehari', 'Strip'),
('A-989', 'Salicyl', 'Bedak', '3 x 1 sehari', 'Buah'),
('D-118', 'Dextrane', 'Tablet', '3x1 Sehari', 'Strip'),
('MP-29', 'Sun', 'Makanan PG', '-', 'Buah'),
('P-332', 'PoliSaxechon', 'Cairan Alkohol', 'Setiap pakai 10 ml', 'Botol'),
('PG-58', 'Pil Vitamin A', 'Suplemen', '3 x 1 Sehari', 'Strip'),
('SD-65', 'Polivanol', 'Obat Tetes Luka', 'Setiap pakai 50 ml', 'Botol '),
('SN-11', 'Alpara', 'Kapsul', '3x1 Sehari', 'Strip');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_operasi`
--

CREATE TABLE `tbl_operasi` (
  `kode_operasi` varchar(6) NOT NULL,
  `nama_operasi` varchar(50) NOT NULL,
  `biaya` int(11) NOT NULL,
  `tindakan_oleh` enum('dokter','petugas','dokter dan petugas','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_operasi`
--

INSERT INTO `tbl_operasi` (`kode_operasi`, `nama_operasi`, `biaya`, `tindakan_oleh`) VALUES
('A-3494', 'Penanganan Luka Memar', 50000, 'dokter'),
('BJ-191', 'Pemeriksaan Katarak', 75000, 'dokter'),
('IA-282', 'Pemeriksaan Polio', 80000, 'dokter'),
('IA-383', 'Penanganan Persalinan', 180000, 'dokter dan petugas'),
('IA-878', 'Pemeriksaan Ibu Hamil', 75000, 'dokter'),
('L-4839', 'Luka Jahit', 95000, 'dokter');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_paramedis`
--

CREATE TABLE `tbl_paramedis` (
  `kode_paramedis` varchar(4) NOT NULL,
  `nama_paramedis` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `no_izin_paramedis` varchar(20) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` varchar(10) NOT NULL,
  `alamat_tinggal` text NOT NULL,
  `id_poli` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_paramedis`
--

INSERT INTO `tbl_paramedis` (`kode_paramedis`, `nama_paramedis`, `jenis_kelamin`, `no_izin_paramedis`, `tempat_lahir`, `tanggal_lahir`, `alamat_tinggal`, `id_poli`) VALUES
('A-12', 'Aulia Mustika Putri', 'Perempuan', '29829822291', 'Bandung', '24-07-1988', 'Klari', 2),
('P-35', 'Lucky Ardi Wijaya', 'Laki-Laki', '29829823991', 'Jogjakarta', '18-03-1991', 'Wadas', 1),
('P-49', 'Marcel Ali Wijaya', 'Laki-Laki', '29829829291', 'Karawang', '19-07-1988', 'Rengas Dengklok', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pasien`
--

CREATE TABLE `tbl_pasien` (
  `no_rekamedis` char(6) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `no_bpjs` varchar(20) NOT NULL,
  `nama_pasien` varchar(30) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` varchar(10) NOT NULL,
  `alamat` text NOT NULL,
  `status_pasien` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pasien`
--

INSERT INTO `tbl_pasien` (`no_rekamedis`, `no_ktp`, `no_bpjs`, `nama_pasien`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `status_pasien`) VALUES
('000001', '3215021831771822', '28287188196112', 'Niko Rahmad', 'L', 'Bandung', '29-03-1992', 'Serang', 'BPJS'),
('000002', '3215021621771800', '28287188196128', 'Oman', 'L', 'Cirebon', '19-07-1989', 'OK', 'BPJS'),
('000004', '3215089831777722', '28287188196139', 'Yulia', 'P', 'Cicaheum', '06-07-1994', 'Serdang', 'BPJS'),
('000005', '3015021831271822', '28287188196145', 'Diana', 'P', 'See Do Are Jo', '09-07-1995', 'CKM', 'BPJS'),
('000006', '3015021899271822', '28287134996145', 'Maulida Fitria', 'P', 'Karawang', '26-12-1984', 'Jatirasa', 'BPJS'),
('000007', '3218291973381903', '28287188096166', 'Rian', 'L', 'Kuningan', '18-07-1978', 'Kosambi', 'BPJS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pegawai`
--

CREATE TABLE `tbl_pegawai` (
  `id_pegawai` varchar(20) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `npwp` varchar(25) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` varchar(10) NOT NULL,
  `id_jabatan` int(2) NOT NULL,
  `id_bidang` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pegawai`
--

INSERT INTO `tbl_pegawai` (`id_pegawai`, `nama_pegawai`, `jenis_kelamin`, `npwp`, `tempat_lahir`, `tanggal_lahir`, `id_jabatan`, `id_bidang`) VALUES
('2838938338', 'Fajar Mulyana', 'Laki-Laki', '389389111834', 'Karawang', '12-03-2002', 2, 3),
('2838938393', 'Dias Raihan', 'Laki-Laki', '822872181136', 'Cilamaya', '16-05-2002', 1, 2),
('3838918917', 'Fitria Nur Sa\'adah', 'Perempuan', '958593882899', 'Karawang', '19-12-2001', 2, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penanganan_operasi`
--

CREATE TABLE `tbl_penanganan_operasi` (
  `id_penanganan` int(5) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `no_bpjs` varchar(20) NOT NULL,
  `status_pasien` varchar(10) NOT NULL,
  `nama_operasi` varchar(50) NOT NULL,
  `biaya` int(11) NOT NULL,
  `ditangani_oleh` enum('dokter','petugas','dokter dan petugas','') NOT NULL,
  `dibayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `keterangan` varchar(13) NOT NULL,
  `tgl_operasi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_penanganan_operasi`
--

INSERT INTO `tbl_penanganan_operasi` (`id_penanganan`, `nama_pasien`, `no_bpjs`, `status_pasien`, `nama_operasi`, `biaya`, `ditangani_oleh`, `dibayar`, `kembalian`, `keterangan`, `tgl_operasi`) VALUES
(9, 'Fitri', 'Fitri', 'Umum', 'Pemeriksaan Polio', 80000, 'dokter', 100000, 20000, 'Berbayar', '24-07-2018'),
(10, 'Oman', 'Oman', 'Umum', 'Pemeriksaan Polio', 80000, 'dokter', 130000, 50000, 'Berbayar', '26-07-2018'),
(11, 'Niko Rahmad', 'Niko Rahmad', 'Umum', 'Pemeriksaan Katarak', 75000, 'dokter', 100000, 25000, 'Berbayar', '26-07-2018'),
(12, 'Diana', 'Diana', 'BPJS', 'Pemeriksaan Katarak', 0, 'dokter', 0, 0, 'Gratis', '26-07-2018'),
(13, 'Muhammad Yogi', 'Muhammad Yogi', 'Umum', 'Pemeriksaan Polio', 80000, 'dokter', 100000, 20000, 'Berbayar', '26-07-2018'),
(14, 'Mehmet', 'Mehmet', 'BPJS', 'Luka Jahit', 0, 'dokter', 0, 0, 'Gratis', '26-07-2018');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pendaftaran`
--

CREATE TABLE `tbl_pendaftaran` (
  `no_registrasi` varchar(4) NOT NULL,
  `no_rawat` varchar(18) NOT NULL,
  `no_rekamedis` varchar(6) NOT NULL,
  `tanggal_daftar` date NOT NULL,
  `kode_dokter_penanggung_jawab` varchar(4) NOT NULL,
  `id_poli` varchar(2) NOT NULL,
  `nama_penanggung_jawab` varchar(30) NOT NULL,
  `hubungan_dengan_penanggung_jawab` varchar(30) NOT NULL,
  `alamat_penanggung_jawab` text NOT NULL,
  `status_pasien` varchar(10) NOT NULL,
  `no_bpjs` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pendaftaran`
--

INSERT INTO `tbl_pendaftaran` (`no_registrasi`, `no_rawat`, `no_rekamedis`, `tanggal_daftar`, `kode_dokter_penanggung_jawab`, `id_poli`, `nama_penanggung_jawab`, `hubungan_dengan_penanggung_jawab`, `alamat_penanggung_jawab`, `status_pasien`, `no_bpjs`) VALUES
('0001', '2018-07-27-0001', '000002', '2018-07-27', 'S-23', '1', 'Suarez', 'Orang Tua', 'Barcelona', 'Umum', '-'),
('0002', '2018-07-27-0002', '000004', '2018-07-27', 'K-12', '2', 'Michelle', 'Saudara Kandung', 'Adiarsa', 'BPJS', '28287188196139'),
('0001', '2018-07-30-0001', '000005', '2018-07-30', 'K-12', '4', 'Arif', 'Saudara Kandung', 'Teljam', 'BPJS', '28287188196145');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengadaan_obat`
--

CREATE TABLE `tbl_pengadaan_obat` (
  `id_pengadaan` varchar(6) NOT NULL,
  `no_trans` varchar(15) NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `kode_obat` varchar(5) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `jenis_obat` varchar(50) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `satuan` varchar(15) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `tgl_transaksi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengadaan_obat`
--

INSERT INTO `tbl_pengadaan_obat` (`id_pengadaan`, `no_trans`, `supplier`, `kode_obat`, `nama_obat`, `jenis_obat`, `harga_beli`, `jumlah`, `satuan`, `keterangan`, `total`, `tgl_transaksi`) VALUES
('0002', 'B-180621-0002', 'Bentoman', 'A-989', 'Salicyl', 'Bedak', 320000, 3, 'Buah', 'ok', 960000, '21-06-2018'),
('0001', 'B-180623-0001', 'Novita', 'SD-65', 'Polivanol', 'Obat Tetes Luka', 679000, 5, 'Botol', 'ok', 3395000, '23-06-2018'),
('0001', 'B-180624-0001', 'Novita', 'SN-11', 'Alpara', 'Tablet', 565000, 20, 'Strip', 'ok', 11300000, '24-06-2018'),
('0004', 'B-180624-0004', 'Novita', 'SD-65', 'Polivanol', 'Obat Tetes Luka', 1230000, 25, 'Botol', 'ok', 30750000, '24-06-2018'),
('0001', 'B-180706-0001', 'Novita', 'SD-65', 'Polivanol', 'Obat Tetes Luka', 479000, 3, 'Botol', 'ok', 1437000, '06-07-2018'),
('0001', 'B-180710-0001', 'Saomanz', 'SN-11', 'Alpara', 'Tablet', 190000, 190, 'Botol', 'ok', 36100000, '10-07-2018'),
('0001', 'B-180717-0001', 'Novita', 'D-118', 'Dextrane', 'Tablet', 3450, 2000, 'Strip', 'Ok', 6900000, '17-07-2018'),
('0001', 'B-180726-0001', 'Bentoman', 'P-332', 'PoliSaxechon', 'Cairan Alkohol', 50000, 4, 'Botol', 'ok', 200000, '26-07-2018');

--
-- Trigger `tbl_pengadaan_obat`
--
DELIMITER $$
CREATE TRIGGER `pengadaan_obat` AFTER INSERT ON `tbl_pengadaan_obat` FOR EACH ROW BEGIN
INSERT into tbl_stok_obat SET
kode_obat = NEW.kode_obat, jumlah = New.jumlah
ON DUPLICATE KEY UPDATE jumlah=jumlah+New.jumlah;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengeluaran_obat`
--

CREATE TABLE `tbl_pengeluaran_obat` (
  `id_pengeluaran` varchar(6) NOT NULL,
  `no_terima_obat` char(15) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `kode_obat` varchar(5) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `jenis_obat` varchar(50) NOT NULL,
  `dosis_aturan_obat` varchar(50) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `satuan` varchar(15) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `tgl_serah_obat` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengeluaran_obat`
--

INSERT INTO `tbl_pengeluaran_obat` (`id_pengeluaran`, `no_terima_obat`, `nama_pasien`, `kode_obat`, `nama_obat`, `jenis_obat`, `dosis_aturan_obat`, `jumlah`, `satuan`, `keterangan`, `tgl_serah_obat`) VALUES
('0001', 'S-180620-0001', 'Oman', 'K-198', 'Paracetamol', 'Tablet', '3 x 1 Sehari Setelah Makan', 5, 'Strip', 'ok', '20-06-2018'),
('0002', 'S-180620-0002', 'Niko Rahmad', 'A-989', 'Salicyl', 'Bedak', '3 x 1 sehari', 1, 'Buah', 'ok', '20-06-2018'),
('0001', 'S-180621-0001', 'Niko Rahmad', 'A-989', 'Salicyl', 'Bedak', '3 x 1 sehari', 4, 'Buah', 'an', '21-06-2018'),
('0002', 'S-180621-0002', 'Oman', 'K-198', 'Paracetamol', 'Tablet', '3 x 1 Sehari Setelah Makan', 2, 'Strip', 'ad', '21-06-2018'),
('0001', 'S-180624-0001', 'Muhammad Yogi', 'SD-65', 'Polivanol', 'Obat Tetes Luka', 'Setiap pakai 50 ml', 3, 'Botol', 'ok', '24-06-2018'),
('0002', 'S-180624-0002', 'Oman', 'SD-65', 'Polivanol', 'Obat Tetes Luka', 'Setiap pakai 50 ml', 3, 'Botol', 'ok', '24-06-2018'),
('0001', 'S-180630-0001', 'Niko Rahmad', 'SD-65', 'Polivanol', 'Obat Tetes Luka', 'Setiap pakai 50 ml', 1, 'Botol', 'ok', '30-06-2018'),
('0001', 'S-180710-0001', 'Diana', 'SD-65', 'Polivanol', 'Obat Tetes Luka', 'Setiap pakai 50 ml', 2, 'Botol', 'ok', '10-07-2018');

--
-- Trigger `tbl_pengeluaran_obat`
--
DELIMITER $$
CREATE TRIGGER `pengeluaran_obat` AFTER INSERT ON `tbl_pengeluaran_obat` FOR EACH ROW BEGIN
UPDATE tbl_stok_obat
SET jumlah = jumlah - new.jumlah
WHERE kode_obat= new.kode_obat;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_perbaikan_gizi`
--

CREATE TABLE `tbl_perbaikan_gizi` (
  `id_gizi` int(5) NOT NULL,
  `nama_anak` varchar(50) NOT NULL,
  `nama_tindakan` varchar(35) NOT NULL,
  `nama_obat` varchar(40) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `satuan` varchar(15) NOT NULL,
  `tanggal` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_perbaikan_gizi`
--

INSERT INTO `tbl_perbaikan_gizi` (`id_gizi`, `nama_anak`, `nama_tindakan`, `nama_obat`, `jumlah`, `satuan`, `tanggal`) VALUES
(8, 'Alzam', 'Pemberian MP-ASI', 'Sun', 1, 'Buah', '18-07-2018'),
(9, 'Thio', 'Penanggulangan GAKY', 'Pil Vitamin A', 1, 'Strip', '18-07-2018');

--
-- Trigger `tbl_perbaikan_gizi`
--
DELIMITER $$
CREATE TRIGGER `perbaikan_gizi` AFTER INSERT ON `tbl_perbaikan_gizi` FOR EACH ROW BEGIN
UPDATE tbl_stok_obat
SET jumlah = jumlah - new.jumlah
WHERE nama_obat= new.nama_obat;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_poli`
--

CREATE TABLE `tbl_poli` (
  `id_poli` int(2) NOT NULL,
  `nama_poli` varchar(40) NOT NULL,
  `ruang_poli` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_poli`
--

INSERT INTO `tbl_poli` (`id_poli`, `nama_poli`, `ruang_poli`) VALUES
(1, 'POLI GIGI', 'RUANG POLI GIGI'),
(2, 'POLI UMUM', 'RUANG POLI UMUM'),
(4, 'POLI KIA', 'RUANG POLI KIA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_resep_obat`
--

CREATE TABLE `tbl_resep_obat` (
  `kode_resep` int(4) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `jenis_obat` varchar(50) NOT NULL,
  `dosis_aturan_obat` varchar(40) NOT NULL,
  `jumlah_obat` int(2) NOT NULL,
  `no_rawat` varchar(18) NOT NULL,
  `no_rekamedis` varchar(6) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_resep_obat`
--

INSERT INTO `tbl_resep_obat` (`kode_resep`, `nama_obat`, `jenis_obat`, `dosis_aturan_obat`, `jumlah_obat`, `no_rawat`, `no_rekamedis`, `tanggal`) VALUES
(1, 'Salicyl', 'Bedak', '3 x 1 sehari', 2, '2018/06/24/0001', '000002', '2018-06-24'),
(2, 'Salicyl', 'Bedak', '3 x 1 sehari', 4, '2018/06/24/0001', '000002', '2018-06-24'),
(3, 'Polivanol', 'Obat Tetes Luka', 'Setiap pakai 50 ml', 1, '2018/06/25/0001', '000002', '2018-06-25'),
(4, 'Alpara', 'Tablet', '3x1 Sehari', 1, '2018/06/30/0001', '000002', '2018-06-30'),
(5, 'Polivanol', 'Obat Tetes Luka', 'Setiap pakai 50 ml', 2, '2018/07/03/0001', '000003', '2018-07-03'),
(6, 'Polivanol', 'Obat Tetes Luka', 'Setiap pakai 50 ml', 1, '2018/07/04/0001', '000003', '2018-07-04'),
(7, 'Alpara', 'Tablet', '3x1 Sehari', 1, '2018/07/06/0002', '000003', '2018-07-06'),
(8, 'Polivanol', 'Obat Tetes Luka', 'Setiap pakai 50 ml', 1, '2018-07-14-0001', '000001', '2018-07-14'),
(9, 'Anexsamol', 'Kapsul', '2x1 Sehari', 1, '2018-07-17-0002', '000003', '2018-07-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_riwayat_tindakan`
--

CREATE TABLE `tbl_riwayat_tindakan` (
  `id_riwayat_tindakan` int(11) NOT NULL,
  `id_poli` varchar(2) NOT NULL,
  `kode_penyakit` varchar(6) NOT NULL,
  `kode_tindakan` varchar(6) NOT NULL,
  `no_rawat` varchar(18) NOT NULL,
  `hasil_periksa` varchar(100) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `no_rekamedis` varchar(6) NOT NULL,
  `tanggal` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_riwayat_tindakan`
--

INSERT INTO `tbl_riwayat_tindakan` (`id_riwayat_tindakan`, `id_poli`, `kode_penyakit`, `kode_tindakan`, `no_rawat`, `hasil_periksa`, `nama_obat`, `no_rekamedis`, `tanggal`) VALUES
(31, '2', 'HB-39', 'K-9892', '2018-07-17-0001', 'Hidung Mimisan', 'Dextrane', '000005', '17-07-2018'),
(33, '2', 'S-9956', 'K-2882', '2018-07-17-0001', 'Pendarahan Di Area Kirarawit', 'Polivanol', '000005', '17-07-2018'),
(34, '1', 'Gg-39', 'P-1912', '2018-07-17-0002', 'Sedikit Gigi Berlubang', 'Anexsamol', '000003', '17-07-2018');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rujukan`
--

CREATE TABLE `tbl_rujukan` (
  `kode_rujukan` varchar(11) NOT NULL,
  `no_rujukan` varchar(18) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `nama_penyakit` varchar(30) NOT NULL,
  `diagnosa` varchar(50) NOT NULL,
  `nama_rumah_sakit` varchar(40) NOT NULL,
  `poli_tujuan` varchar(25) NOT NULL,
  `tgl_rujukan` varchar(10) NOT NULL,
  `no_rawat` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_rujukan`
--

INSERT INTO `tbl_rujukan` (`kode_rujukan`, `no_rujukan`, `nama_pasien`, `nama_penyakit`, `diagnosa`, `nama_rumah_sakit`, `poli_tujuan`, `tgl_rujukan`, `no_rawat`) VALUES
('0001', 'R-20180621-0001', 'Niko Rahmad', 'Cacar', 'cacar ganas', 'RSUD Palembang', 'Poli Kulit', '2018-06-21', '2018/06/21/0002'),
('0001', 'R-20180623-0001', 'Muhammad Yogi', 'Diabetes', 'Kencing Manis', 'RS.Bayukarta', 'Poli Dalam', '2018-06-23', '2018/06/23/0001'),
('0001', 'R-20180625-0001', 'Oman', 'Diabetes', 'Mengalami Sedikit Penghambatan', 'RSUD Tembilahan ', 'Poli Saraf', '2018-06-25', '2018/06/25/0001'),
('0001', 'R-20180630-0001', 'Oman', 'Cacar', 'Bintik-Bintik Merah', 'RS Bayukarta', 'Poli Kulit', '2018-06-30', '2018/06/30/0001'),
('0001', 'R-20180706-0001', 'Muhammad Yogi', 'Cacar', 'Sakit Berdarah', 'RSUD Karawang', 'Poli Kulit', '2018-07-06', '2018/07/06/0002'),
('0001', 'R-20180714-0001', 'Niko Rahmad', 'Hidung Bengkak', 'Hidung Berdarah', 'RSUD Semarang', 'Poli Saraf', '2018-07-14', '2018-07-14-0001'),
('0001', 'R-20180717-0001', 'Muhammad Yogi', 'Gigi Berlubang', 'Pendarahan Di Gigi', 'RSUD Bandung', 'Poli Gigi', '2018-07-17', '2018-07-17-0002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id_setting` int(11) NOT NULL,
  `nama_setting` varchar(50) NOT NULL,
  `value` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_setting`
--

INSERT INTO `tbl_setting` (`id_setting`, `nama_setting`, `value`) VALUES
(1, 'Tampil Menu', 'ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_stok_obat`
--

CREATE TABLE `tbl_stok_obat` (
  `kode_obat` varchar(5) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `satuan` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_stok_obat`
--

INSERT INTO `tbl_stok_obat` (`kode_obat`, `jumlah`, `satuan`) VALUES
('A-989', 22, 'Buah'),
('D-118', 2000, 'Strip'),
('SD-65', 24, 'Botol'),
('SN-11', 213, 'Strip'),
('P-332', 4, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `kode_supplier` varchar(6) NOT NULL,
  `nama_supplier` varchar(60) NOT NULL,
  `alamat` text NOT NULL,
  `no_telpon` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`kode_supplier`, `nama_supplier`, `alamat`, `no_telpon`) VALUES
('AW-189', 'Novita', 'Perum Pemda', '082872878219'),
('B-2827', 'Bentoman', 'Johar', '0828728726');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tindakan`
--

CREATE TABLE `tbl_tindakan` (
  `kode_tindakan` varchar(6) NOT NULL,
  `nama_tindakan` varchar(30) NOT NULL,
  `tindakan_oleh` enum('dokter','petugas','dokter_dan_petugas','') NOT NULL,
  `id_poliklinik` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tindakan`
--

INSERT INTO `tbl_tindakan` (`kode_tindakan`, `nama_tindakan`, `tindakan_oleh`, `id_poliklinik`) VALUES
('K-0016', 'Periksa Mata', 'dokter', 2),
('K-2882', 'Periksa Kulit', 'dokter', 2),
('K-9892', 'Periksa Hidung', 'dokter_dan_petugas', 2),
('P-1912', 'Pemeriksaan Gigi', 'dokter', 1),
('P-3831', 'Periksa Mulut', 'dokter', 2),
('P-8392', 'Periksa Suhu', 'dokter', 2),
('PG-39', 'Pemberian MP-ASI', 'petugas', 2),
('PG-48', 'Penanggulangan GAKY', 'dokter_dan_petugas', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_users` int(2) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_users`, `full_name`, `email`, `password`, `images`, `id_user_level`, `is_aktif`) VALUES
(6, 'admin', 'admin.puskesmas@gmail.com', '$2y$04$IhTaAEVp51NVhMPeAiOeZOrT.6ViccXtycqDBY1sGb3hUBYG7itsS', 'diponegoro1.png', 1, 'y'),
(8, 'Fitria', 'fitria@gmail.com', 'fitria19', '', 4, 'y'),
(9, 'Dias', 'Dias@gmail.com', '123456', '', 3, 'y'),
(11, 'Popon', 'popon@gmail.com', '$2y$04$K8fYN.G3WhbHQ7FE5scfHuJXCFwt71Io74Iyj1gsspSv9LRdlJAai', 'Ki_Hajar_Dewantara1.png', 5, 'y'),
(12, 'Tatang', 'tatang@gmail.com', '$2y$04$HTUtgwJ6tXlzFA9o9TYL.erXzyaLg/Ow5xgY/Ze.GNzO27X07Fluu', '', 4, 'y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user_level`
--

CREATE TABLE `tbl_user_level` (
  `id_user_level` int(2) NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user_level`
--

INSERT INTO `tbl_user_level` (`id_user_level`, `nama_level`) VALUES
(1, 'Admin'),
(3, 'Dokter'),
(4, 'Apotek'),
(5, 'Pendaftaran');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_bidang`
--
ALTER TABLE `tbl_bidang`
  ADD PRIMARY KEY (`id_bidang`);

--
-- Indeks untuk tabel `tbl_diagnosa_penyakit`
--
ALTER TABLE `tbl_diagnosa_penyakit`
  ADD PRIMARY KEY (`kode_diagnosa`);

--
-- Indeks untuk tabel `tbl_dokter`
--
ALTER TABLE `tbl_dokter`
  ADD PRIMARY KEY (`kode_dokter`);

--
-- Indeks untuk tabel `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_jabatan`
--
ALTER TABLE `tbl_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `tbl_jadwal_praktek_dokter`
--
ALTER TABLE `tbl_jadwal_praktek_dokter`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indeks untuk tabel `tbl_kesehatan_ibu_anak`
--
ALTER TABLE `tbl_kesehatan_ibu_anak`
  ADD PRIMARY KEY (`id_kia`);

--
-- Indeks untuk tabel `tbl_laboratorium`
--
ALTER TABLE `tbl_laboratorium`
  ADD PRIMARY KEY (`id_lab`);

--
-- Indeks untuk tabel `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `tbl_obat`
--
ALTER TABLE `tbl_obat`
  ADD PRIMARY KEY (`kode_obat`);

--
-- Indeks untuk tabel `tbl_operasi`
--
ALTER TABLE `tbl_operasi`
  ADD PRIMARY KEY (`kode_operasi`);

--
-- Indeks untuk tabel `tbl_paramedis`
--
ALTER TABLE `tbl_paramedis`
  ADD PRIMARY KEY (`kode_paramedis`),
  ADD KEY `id_spesialis` (`id_poli`);

--
-- Indeks untuk tabel `tbl_pasien`
--
ALTER TABLE `tbl_pasien`
  ADD PRIMARY KEY (`no_rekamedis`);

--
-- Indeks untuk tabel `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `id_bidang` (`id_bidang`),
  ADD KEY `id_jabatan` (`id_jabatan`);

--
-- Indeks untuk tabel `tbl_penanganan_operasi`
--
ALTER TABLE `tbl_penanganan_operasi`
  ADD PRIMARY KEY (`id_penanganan`);

--
-- Indeks untuk tabel `tbl_pendaftaran`
--
ALTER TABLE `tbl_pendaftaran`
  ADD PRIMARY KEY (`no_rawat`);

--
-- Indeks untuk tabel `tbl_pengadaan_obat`
--
ALTER TABLE `tbl_pengadaan_obat`
  ADD PRIMARY KEY (`no_trans`);

--
-- Indeks untuk tabel `tbl_pengeluaran_obat`
--
ALTER TABLE `tbl_pengeluaran_obat`
  ADD PRIMARY KEY (`no_terima_obat`);

--
-- Indeks untuk tabel `tbl_perbaikan_gizi`
--
ALTER TABLE `tbl_perbaikan_gizi`
  ADD PRIMARY KEY (`id_gizi`);

--
-- Indeks untuk tabel `tbl_poli`
--
ALTER TABLE `tbl_poli`
  ADD PRIMARY KEY (`id_poli`);

--
-- Indeks untuk tabel `tbl_resep_obat`
--
ALTER TABLE `tbl_resep_obat`
  ADD PRIMARY KEY (`kode_resep`);

--
-- Indeks untuk tabel `tbl_riwayat_tindakan`
--
ALTER TABLE `tbl_riwayat_tindakan`
  ADD PRIMARY KEY (`id_riwayat_tindakan`);

--
-- Indeks untuk tabel `tbl_rujukan`
--
ALTER TABLE `tbl_rujukan`
  ADD PRIMARY KEY (`no_rujukan`);

--
-- Indeks untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `tbl_stok_obat`
--
ALTER TABLE `tbl_stok_obat`
  ADD PRIMARY KEY (`kode_obat`);

--
-- Indeks untuk tabel `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`kode_supplier`);

--
-- Indeks untuk tabel `tbl_tindakan`
--
ALTER TABLE `tbl_tindakan`
  ADD PRIMARY KEY (`kode_tindakan`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_users`);

--
-- Indeks untuk tabel `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_bidang`
--
ALTER TABLE `tbl_bidang`
  MODIFY `id_bidang` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT untuk tabel `tbl_jabatan`
--
ALTER TABLE `tbl_jabatan`
  MODIFY `id_jabatan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_jadwal_praktek_dokter`
--
ALTER TABLE `tbl_jadwal_praktek_dokter`
  MODIFY `id_jadwal` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_kesehatan_ibu_anak`
--
ALTER TABLE `tbl_kesehatan_ibu_anak`
  MODIFY `id_kia` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tbl_laboratorium`
--
ALTER TABLE `tbl_laboratorium`
  MODIFY `id_lab` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id_menu` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `tbl_penanganan_operasi`
--
ALTER TABLE `tbl_penanganan_operasi`
  MODIFY `id_penanganan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tbl_perbaikan_gizi`
--
ALTER TABLE `tbl_perbaikan_gizi`
  MODIFY `id_gizi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_poli`
--
ALTER TABLE `tbl_poli`
  MODIFY `id_poli` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_resep_obat`
--
ALTER TABLE `tbl_resep_obat`
  MODIFY `kode_resep` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_riwayat_tindakan`
--
ALTER TABLE `tbl_riwayat_tindakan`
  MODIFY `id_riwayat_tindakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_users` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  MODIFY `id_user_level` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `rental_mobil`
--
CREATE DATABASE IF NOT EXISTS `rental_mobil` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rental_mobil`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_akun`
--

CREATE TABLE `tbl_akun` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `foto` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_akun`
--

INSERT INTO `tbl_akun` (`id`, `nama`, `username`, `password`, `foto`) VALUES
(4, 'Administrator', 'admin', '$2y$10$tf2VKfD.kjhXFc16fbaNY.EvtMhvhb8iYFWvHVr5MURTg443VwmIm', 'administrator-1579273408.png'),
(5, 'Fakhrul Fanani Nugroho', 'nugrohoff', '$2y$10$MzYgUN41HVHtmLixc40jxuBwXbstCYqeCxMTitlUsTcEIO8KdN.Su', 'fakhrul-fanani-nugroho-1579279638.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jenis_bayar`
--

CREATE TABLE `tbl_jenis_bayar` (
  `id` int(11) NOT NULL,
  `jenis_bayar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_jenis_bayar`
--

INSERT INTO `tbl_jenis_bayar` (`id`, `jenis_bayar`) VALUES
(3, 'Cash'),
(4, 'Kredit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_merk`
--

CREATE TABLE `tbl_merk` (
  `id` int(11) NOT NULL,
  `merk` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_merk`
--

INSERT INTO `tbl_merk` (`id`, `merk`) VALUES
(8, 'Toyota'),
(9, 'Suzuki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mobil`
--

CREATE TABLE `tbl_mobil` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `warna` varchar(20) DEFAULT NULL,
  `no_polisi` varchar(10) DEFAULT NULL,
  `jumlah_kursi` int(1) DEFAULT NULL,
  `tahun_beli` int(4) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `id_merk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_mobil`
--

INSERT INTO `tbl_mobil` (`id`, `nama`, `warna`, `no_polisi`, `jumlah_kursi`, `tahun_beli`, `gambar`, `id_merk`) VALUES
(13, 'Toyota Kijang Innova', 'Putih', 'R 6788 KM', 6, 2019, 'toyota-kijang-innova-1577631464.png', NULL),
(14, 'Toyota Kijang Innova', 'Abu Abu', 'R 1309 KN', 7, 2018, 'toyota-kijang-innova-1579004786.png', 8),
(15, 'Suzuki All New Ertiga', 'Putih', 'R 1739 KN', 8, 2018, 'suzuki-all-new-ertiga-1579279546.png', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pemesan`
--

CREATE TABLE `tbl_pemesan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pemesan`
--

INSERT INTO `tbl_pemesan` (`id`, `nama`, `alamat`, `jenis_kelamin`, `foto`) VALUES
(6, 'Fakhrul', 'Sidareja', 'L', 'fakhrul-1579004931.jpg'),
(7, 'Fanani', 'Sidareja', 'L', 'fanani-1579275545.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_perjalanan`
--

CREATE TABLE `tbl_perjalanan` (
  `id` int(11) NOT NULL,
  `asal` varchar(20) DEFAULT NULL,
  `tujuan` varchar(20) DEFAULT NULL,
  `jarak` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_perjalanan`
--

INSERT INTO `tbl_perjalanan` (`id`, `asal`, `tujuan`, `jarak`) VALUES
(3, 'Cilacap', 'Jogjakarta', 300),
(4, 'Cilacap', 'Ciamis', 70);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pesanan`
--

CREATE TABLE `tbl_pesanan` (
  `id` int(11) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `id_pemesan` int(11) DEFAULT NULL,
  `id_mobil` int(11) DEFAULT NULL,
  `id_perjalanan` int(11) DEFAULT NULL,
  `id_jenis_bayar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pesanan`
--

INSERT INTO `tbl_pesanan` (`id`, `harga`, `tgl_pinjam`, `tgl_kembali`, `id_pemesan`, `id_mobil`, `id_perjalanan`, `id_jenis_bayar`) VALUES
(1, 1000000, '2020-01-01', '2020-01-04', NULL, 13, NULL, NULL),
(6, 2000000, '2020-01-17', '2020-01-20', 6, 14, 3, 3),
(8, 1500000, '2020-01-18', '2020-01-21', 7, 15, 4, 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_akun`
--
ALTER TABLE `tbl_akun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_jenis_bayar`
--
ALTER TABLE `tbl_jenis_bayar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_merk`
--
ALTER TABLE `tbl_merk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_mobil`
--
ALTER TABLE `tbl_mobil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_mobil_ibfk_2` (`id_merk`);

--
-- Indeks untuk tabel `tbl_pemesan`
--
ALTER TABLE `tbl_pemesan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_perjalanan`
--
ALTER TABLE `tbl_perjalanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pemesan` (`id_pemesan`),
  ADD KEY `id_mobil` (`id_mobil`),
  ADD KEY `id_perjalanan` (`id_perjalanan`),
  ADD KEY `id_jenis_bayar` (`id_jenis_bayar`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_akun`
--
ALTER TABLE `tbl_akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_jenis_bayar`
--
ALTER TABLE `tbl_jenis_bayar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_merk`
--
ALTER TABLE `tbl_merk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_mobil`
--
ALTER TABLE `tbl_mobil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbl_pemesan`
--
ALTER TABLE `tbl_pemesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_perjalanan`
--
ALTER TABLE `tbl_perjalanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_mobil`
--
ALTER TABLE `tbl_mobil`
  ADD CONSTRAINT `tbl_mobil_ibfk_2` FOREIGN KEY (`id_merk`) REFERENCES `tbl_merk` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  ADD CONSTRAINT `tbl_pesanan_ibfk_1` FOREIGN KEY (`id_pemesan`) REFERENCES `tbl_pemesan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesanan_ibfk_2` FOREIGN KEY (`id_mobil`) REFERENCES `tbl_mobil` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesanan_ibfk_3` FOREIGN KEY (`id_perjalanan`) REFERENCES `tbl_perjalanan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesanan_ibfk_4` FOREIGN KEY (`id_jenis_bayar`) REFERENCES `tbl_jenis_bayar` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
--
-- Database: `rumahsakit`
--
CREATE DATABASE IF NOT EXISTS `rumahsakit` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rumahsakit`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `id` int(20) NOT NULL,
  `kode_dokter` int(20) NOT NULL,
  `nama_dokter` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `departemen` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`id`, `kode_dokter`, `nama_dokter`, `jenis_kelamin`, `departemen`) VALUES
(0, 121, 'Irsyad Muhammad, dr', 'laki-laki', 'Umum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `id` int(20) NOT NULL,
  `kode_obat` varchar(20) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `jenis_obat` varchar(20) NOT NULL,
  `aturan_obat` varchar(30) NOT NULL,
  `stok` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`id`, `kode_obat`, `nama_obat`, `jenis_obat`, `aturan_obat`, `stok`) VALUES
(0, 'A-282', 'Anexsamol', 'Kapsul', '2x1 Sehari ', 200);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id` int(20) NOT NULL,
  `no_ktp` int(20) NOT NULL,
  `nama_pasien` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `status_pasien` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id`, `no_ktp`, `nama_pasien`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `status_pasien`) VALUES
(0, 2147483647, 'Fitria nur', 'perempuan', 'karawang', '19-12-2001', 'ckm', 'BPJS');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);
--
-- Database: `rumah_sakit`
--
CREATE DATABASE IF NOT EXISTS `rumah_sakit` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rumah_sakit`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dokter`
--

CREATE TABLE `tbl_dokter` (
  `id_user` int(5) NOT NULL,
  `nama_dokter` varchar(30) NOT NULL,
  `departemen` varchar(30) NOT NULL,
  `jadwal_praktik` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_dokter`
--

INSERT INTO `tbl_dokter` (`id_user`, `nama_dokter`, `departemen`, `jadwal_praktik`) VALUES
(1001, 'Irsyad Muhammad, dr', 'Umum', 'Senin - Kamis | 08.00 - 15.00'),
(1002, 'Pranata Audy, dr.SpB', 'Gigi', 'Senin - Kamis | 08.00 - 15.00'),
(1003, 'Jaidi, dr.SpA', 'Anak', 'Senin - Kamis | 08.00 - 15.00'),
(1004, 'Anugrah Pratama, dr.SpPD', 'Kandungan', 'Senin - Kamis | 08.00 - 15.00'),
(1005, 'Dendi Abdul Rohim, H.dr.SpB', 'THT', 'Senin - Kamis | 08.00 - 15.00'),
(1006, 'Kurniawan Aditya, dr.SpOG', 'Kandungan', 'Senin - Kamis | 08.00 - 15.00'),
(1007, 'Arifin Muhammad, dr.SpS.Mkes', 'Syaraf', 'Senin - Kamis | 08.00 - 15.00'),
(1008, 'Gyats Haitsam, Hj.dr.SpKK', 'Kulit dan Kelamin', 'Senin - Kamis | 08.00 - 15.00'),
(1009, 'Dono Aditia, .dr.SpTHT', 'THT', 'Senin - Kamis | 08.00 - 15.00'),
(1010, 'Zeffry Irwanto, dr.SpM', 'Kulit dan Kelamin', 'Senin - Kamis | 08.00 - 15.00'),
(1011, 'Gustian M, dr', 'Syaraf', 'Senin - Kamis | 08.00 - 15.00'),
(1012, 'Septianti Amalia, S.PSi', 'Umum', 'Senin - Kamis | 08.00 - 15.00'),
(1013, 'Setyaningsih D, dr.SpA', 'Anak', 'Senin - Kamis | 08.00 - 15.00'),
(1014, 'Bayu, H.dr.SpB', 'Umum', 'Senin - Kamis | 08.00 - 15.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pasien`
--

CREATE TABLE `tbl_pasien` (
  `id_pasien` int(6) NOT NULL,
  `nama_pasien` varchar(30) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `no_telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pasien`
--

INSERT INTO `tbl_pasien` (`id_pasien`, `nama_pasien`, `alamat`, `jenis_kelamin`, `no_telepon`) VALUES
(11, 'Muhammad Ilyas Firdaus', 'alam kubur', 'P', '081264162'),
(16, 'Raffi Ahmad', 'Jonggol', 'L', '08126252153'),
(17, 'Kevin Julio', 'Cimahi', 'P', '08172352412'),
(18, 'Chelsea Islan', 'Jakarta', 'P', '082416242'),
(19, 'Raisa Ardiana', 'Sukabumi', 'P', '0212312415'),
(20, 'Tina Toon', 'Banyuwangi', 'P', '08098999'),
(21, 'Joshua', 'Surabaya', 'L', '08123122353'),
(22, 'Risa Tachibana', 'Jampang', 'P', '08124124412'),
(23, 'Sarah Ardelia', 'Bogor', 'P', '0812524124'),
(24, 'Jessica Mila', 'Madiun', 'P', '08235141212'),
(25, 'Ricky Harun', 'Lampung', 'L', '08235235235');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pri`
--

CREATE TABLE `tbl_pri` (
  `no_ri` int(8) NOT NULL,
  `id_pasien` int(6) NOT NULL,
  `id_ruang` int(3) NOT NULL,
  `tanggal_checkin` date NOT NULL,
  `tanggal_checkout` date NOT NULL,
  `hari_menginap` int(3) NOT NULL,
  `diagnosa` text NOT NULL,
  `biaya` int(12) NOT NULL,
  `bayar` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pri`
--

INSERT INTO `tbl_pri` (`no_ri`, `id_pasien`, `id_ruang`, `tanggal_checkin`, `tanggal_checkout`, `hari_menginap`, `diagnosa`, `biaya`, `bayar`) VALUES
(25, 19, 105, '2014-12-04', '2014-12-11', 7, 'asdasd', 2275000, 2275000),
(28, 16, 111, '2014-12-05', '2014-12-12', 7, 'ASDASDASD', 1519000, 0),
(29, 18, 111, '2014-12-12', '2014-12-16', 4, 'SDASDASD', 868000, 0),
(30, 16, 105, '2014-12-04', '2014-12-17', 13, 'ASDASDASD', 4225000, 4225000),
(31, 16, 111, '2014-12-11', '2014-12-17', 6, 'asdasd', 1302000, 0),
(32, 16, 111, '2014-12-11', '2014-12-17', 6, 'asdasd', 1302000, 0),
(33, 16, 111, '2014-12-11', '2014-12-17', 6, 'asdasd', 1302000, 23232323),
(34, 18, 107, '2014-12-04', '2014-12-17', 13, 'asdasd', 1911000, 4234),
(35, 16, 108, '2014-12-03', '2014-12-19', 16, 'asdasd', 1920000, 123123123),
(36, 20, 106, '2014-12-02', '2014-12-25', 23, 'asdasdasdasdasd', 4600000, 45645745),
(37, 19, 101, '2014-12-10', '2014-12-17', 7, 'gsfg', 2625000, 5345);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_prj`
--

CREATE TABLE `tbl_prj` (
  `no_rj` int(8) NOT NULL,
  `id_dokter` varchar(5) NOT NULL,
  `id_pasien` int(6) NOT NULL,
  `departemen` varchar(20) NOT NULL,
  `tanggal` datetime NOT NULL,
  `keluhan` varchar(255) NOT NULL,
  `diagnosa` varchar(255) DEFAULT NULL,
  `biaya` int(10) NOT NULL,
  `bayar` int(12) DEFAULT NULL,
  `tindakan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_prj`
--

INSERT INTO `tbl_prj` (`no_rj`, `id_dokter`, `id_pasien`, `departemen`, `tanggal`, `keluhan`, `diagnosa`, `biaya`, `bayar`, `tindakan`) VALUES
(14, '1004', 19, 'Kandungan', '2014-12-05 03:54:46', 'Mual-mual', ' aasasfsdfsdfsdf\r\nsdf\r\nsdf\r\nasdf\r\nasdf\r\n  ', 200000, 200000, 'Rawat Inap'),
(15, '', 21, 'Syaraf', '2014-12-06 01:30:30', 'sasdfasdg', NULL, 180000, 34534535, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_resep`
--

CREATE TABLE `tbl_resep` (
  `id_resep` int(9) NOT NULL,
  `id_dokter` int(8) NOT NULL,
  `id_pasien` varchar(2) NOT NULL,
  `nama_resep` varchar(50) NOT NULL,
  `rincian_resep` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_resep`
--

INSERT INTO `tbl_resep` (`id_resep`, `id_dokter`, `id_pasien`, `nama_resep`, `rincian_resep`, `tanggal`) VALUES
(1, 1004, '16', 'asdasdasd ', 'asdasdasd \r\nfgdsfgsdf\r\ngsdfg\r\nsdfg\r\nsdfg\r\ndsfg\r\nsdfg\r\nsdfg\r\ndsfg\r\ndsfg', '2014-12-05 08:19:00'),
(5, 1004, '17', 'aaaa', 'aaaaa\r\ndasdasd f\r\nas fs\r\nadfasdfasdf sadf\r\nasdf\r\nasdf\r\nasd fasdfasdf asdfasdf', '2014-12-05 18:42:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tarif_ri`
--

CREATE TABLE `tbl_tarif_ri` (
  `id_tarif_ri` int(4) NOT NULL,
  `perawatan` varchar(20) NOT NULL,
  `pelayanan` varchar(30) NOT NULL,
  `tipe_kamar` varchar(20) NOT NULL,
  `tarif` int(8) NOT NULL,
  `kapasitas` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tarif_ri`
--

INSERT INTO `tbl_tarif_ri` (`id_tarif_ri`, `perawatan`, `pelayanan`, `tipe_kamar`, `tarif`, `kapasitas`) VALUES
(101, 'Rawat Inap per hari', 'Dokter Spesials dan Umum', 'Kelas VIP', 375000, 1),
(102, 'Rawat Inap per hari', 'Dokter Spesials dan Umum', 'Kelas I', 220000, 2),
(103, 'Rawat Inap per hari', 'Dokter Spesials dan Umum', 'Kelas II', 153000, 3),
(104, 'Rawat Inap per hari', 'Dokter Spesials dan Umum', 'Kelas III', 130000, 6),
(105, 'Rawat Inap per hari', 'Dokter Umum', 'Kelas VIP', 325000, 1),
(106, 'Rawat Inap per hari', 'Dokter Umum', 'Kelas I', 200000, 2),
(107, 'Rawat Inap per hari', 'Dokter Umum', 'Kelas II', 147000, 3),
(108, 'Rawat Inap per hari', 'Dokter Umum', 'Kelas III', 120000, 6),
(109, 'Ruang ICU', 'Dokter Spesials dan Umum', '', 200000, 2),
(110, 'Ruang ICU', 'Dokter Umum', '', 180000, 2),
(111, 'Ruang ICU', 'Instalasi  Anestesi', 'Kelas I', 217000, 2),
(112, 'Ruang ICU', 'Instalasi  Anestesi', 'Kelas II', 170000, 3),
(113, 'Ruang ICU', 'Instalasi  Anestesi', 'Kelas III', 136000, 6),
(114, 'Perinatologi', 'Dokter Spesialis dan Umum', 'Kelas VIP', 225000, 1),
(115, 'Perinatologi', 'Dokter Spesialis dan Umum', 'Kelas I', 192000, 2),
(116, 'Perinatologi', 'Dokter Spesialis dan Umum', 'Kelas II', 130000, 3),
(117, 'Perinatologi', 'Dokter Spesialis dan Umum', 'Kelas III', 130000, 6),
(118, 'Perinatologi', 'Dokter Umum', 'Kelas VIP', 200000, 1),
(119, 'Perinatologi', 'Dokter Umum', 'Kelas I', 172000, 2),
(120, 'Perinatologi', 'Dokter Umum', 'Kelas II', 130000, 3),
(121, 'Perinatologi', 'Dokter Umum', 'Kelas III', 120000, 6),
(122, 'Perinatologi', 'Gizi Rawat Inap', 'Kelas VIP', 120000, 1),
(123, 'Perinatologi', 'Gizi Rawat Inap', 'Kelas I', 100000, 2),
(124, 'Perinatologi', 'Gizi Rawat Inap', 'Kelas II', 70000, 3),
(125, 'Perinatologi', 'Gizi Rawat Inap', 'Kelas III', 30000, 6),
(126, 'Perinatologi', 'Persalinan Normal Dokter', 'Kelas VIP', 560000, 1),
(127, 'Perinatologi', 'Persalinan Normal Dokter', 'Kelas I', 470000, 2),
(128, 'Perinatologi', 'Persalinan Normal Dokter', 'Kelas II', 330000, 3),
(129, 'Perinatologi', 'Persalinan Normal Dokter', 'Kelas III', 270000, 6),
(130, 'Perinatologi', 'Persalinan Normal Bidan', 'Kelas VIP', 350000, 1),
(131, 'Perinatologi', 'Persalinan Normal Bidan', 'Kelas I', 300000, 2),
(132, 'Perinatologi', 'Persalinan Normal Bidan', 'Kelas II', 220000, 3),
(133, 'Perinatologi', 'Persalinan Normal Bidan', 'Kelas III', 190000, 6),
(134, 'Perinatologi', 'Persalinan Tidak Normal', 'Kelas VIP', 930000, 1),
(135, 'Perinatologi', 'Persalinan Tidak Normal', 'Kelas I', 750000, 2),
(136, 'Perinatologi', 'Persalinan Tidak Normal', 'Kelas II', 540000, 3),
(137, 'Perinatologi', 'Persalinan Tidak Normal', 'Kelas III', 470000, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tarif_rj`
--

CREATE TABLE `tbl_tarif_rj` (
  `id_tarif_rj` int(3) NOT NULL,
  `departemen` varchar(30) NOT NULL,
  `tarif` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tarif_rj`
--

INSERT INTO `tbl_tarif_rj` (`id_tarif_rj`, `departemen`, `tarif`) VALUES
(5, 'Umum', 150000),
(6, 'Gigi', 160000),
(7, 'Anak', 180000),
(8, 'Kandungan', 200000),
(9, 'THT', 150000),
(10, 'Syaraf', 180000),
(11, 'Kulit dan Kelamin', 300000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` int(1) NOT NULL,
  `hak_akses` varchar(20) NOT NULL,
  `grup` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `status`, `hak_akses`, `grup`) VALUES
(2, 'ahmad', 'ahmad', 0, 'Departemen', 'Kandungan'),
(3, 'dendi', 'dendi', 0, 'Front Office', ''),
(5, 'tht', 'tht', 0, 'Departemen', 'THT'),
(6, 'umum', 'umum', 0, 'Departemen', 'Umum'),
(1001, 'irsyad', 'irsyad', 0, 'Dokter', 'Irsyad Muhammad, dr'),
(1002, 'vaksi', 'vaksi', 0, 'Dokter', 'Pranata Audy, dr.SpB'),
(1003, 'rafdi', 'rafdi', 0, 'Dokter', 'Jaidi, dr.SpA'),
(1004, 'adit', 'adit', 0, 'Dokter', 'Anugrah Pratama, dr.SpPD'),
(1007, 'ipin', 'ipin', 0, 'Dokter', 'Arifin Muhammad, dr.SpS.Mkes'),
(1010, 'zeffry', 'zeffry', 0, 'Dokter', 'Zeffry Irwanto, dr.SpM'),
(1011, 'kulitkelamin', 'kulitkelamin', 0, 'Departemen', 'Kulit dan Kelamin'),
(1012, 'syaraf', 'syaraf', 0, 'Departemen', 'Syaraf'),
(1013, 'gigi', 'gigi', 0, 'Departemen', 'Gigi'),
(1014, 'anak', 'anak', 0, 'Departemen', 'Anak'),
(1015, 'kandungan', 'kandungan', 0, 'Departemen', 'Kandungan'),
(1016, 'kandungan', 'kandungan', 0, 'Departemen', 'Kandungan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_dokter`
--
ALTER TABLE `tbl_dokter`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `tbl_pasien`
--
ALTER TABLE `tbl_pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indeks untuk tabel `tbl_pri`
--
ALTER TABLE `tbl_pri`
  ADD PRIMARY KEY (`no_ri`);

--
-- Indeks untuk tabel `tbl_prj`
--
ALTER TABLE `tbl_prj`
  ADD PRIMARY KEY (`no_rj`),
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indeks untuk tabel `tbl_resep`
--
ALTER TABLE `tbl_resep`
  ADD PRIMARY KEY (`id_resep`);

--
-- Indeks untuk tabel `tbl_tarif_ri`
--
ALTER TABLE `tbl_tarif_ri`
  ADD PRIMARY KEY (`id_tarif_ri`);

--
-- Indeks untuk tabel `tbl_tarif_rj`
--
ALTER TABLE `tbl_tarif_rj`
  ADD PRIMARY KEY (`id_tarif_rj`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_dokter`
--
ALTER TABLE `tbl_dokter`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1015;

--
-- AUTO_INCREMENT untuk tabel `tbl_pasien`
--
ALTER TABLE `tbl_pasien`
  MODIFY `id_pasien` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tbl_pri`
--
ALTER TABLE `tbl_pri`
  MODIFY `no_ri` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `tbl_prj`
--
ALTER TABLE `tbl_prj`
  MODIFY `no_rj` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbl_resep`
--
ALTER TABLE `tbl_resep`
  MODIFY `id_resep` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_tarif_ri`
--
ALTER TABLE `tbl_tarif_ri`
  MODIFY `id_tarif_ri` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT untuk tabel `tbl_tarif_rj`
--
ALTER TABLE `tbl_tarif_rj`
  MODIFY `id_tarif_rj` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1017;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_prj`
--
ALTER TABLE `tbl_prj`
  ADD CONSTRAINT `tbl_prj_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `tbl_pasien` (`id_pasien`);
--
-- Database: `sewadvd2`
--
CREATE DATABASE IF NOT EXISTS `sewadvd2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sewadvd2`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `denda`
--

CREATE TABLE `denda` (
  `ID_DENDA` varchar(5) NOT NULL,
  `JENIS_DENDA` varchar(25) DEFAULT NULL,
  `HARGA_DENDA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `denda`
--

INSERT INTO `denda` (`ID_DENDA`, `JENIS_DENDA`, `HARGA_DENDA`) VALUES
('DE00', 'tidak ada denda', 0),
('G01', 'game-telat', 1000),
('G02', 'game-rusak', 2000),
('G03', 'game-hilang', 4000),
('M01', 'movie-telat', 1000),
('M02', 'movie-rusak', 2000),
('M03', 'movie-hilang', 4000),
('S01', 'software-telat', 2000),
('S02', 'software-rusak', 3000),
('S03', 'software-hilang', 6000),
('SE01', 'series-telat', 1000),
('SE02', 'series-rusak', 1500),
('SE03', 'series-hilang', 3000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `film`
--

CREATE TABLE `film` (
  `ID_FILM` varchar(5) NOT NULL,
  `ID_JENIS` varchar(5) DEFAULT NULL,
  `ID_KATEGORI` varchar(5) DEFAULT NULL,
  `COVER` varchar(255) NOT NULL,
  `JUDUL_FILM` varchar(50) DEFAULT NULL,
  `TAHUN_FILM` int(11) DEFAULT NULL,
  `HARGA_FILM` int(11) DEFAULT NULL,
  `STATUS_FILM` int(11) DEFAULT NULL,
  `JUMLAH_KALI_DIPINJAM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `film`
--

INSERT INTO `film` (`ID_FILM`, `ID_JENIS`, `ID_KATEGORI`, `COVER`, `JUDUL_FILM`, `TAHUN_FILM`, `HARGA_FILM`, `STATUS_FILM`, `JUMLAH_KALI_DIPINJAM`) VALUES
('F111', 'J001', 'K001', 'https://www.goldenglobes.com/sites/default/files/styles/portrait_medium/public/films/finding_nemo.jpeg?itok=grIy9dHa&c=bce87a9e2fc72060ed86405504fbb373', 'finding nemo', 2003, 2580, 1, 100),
('F131', 'J003', 'K001', 'https://images-na.ssl-images-amazon.com/images/I/71W0PHrQpEL._SY550_.jpg', 'captain amerika', 2014, 3000, 1, 70),
('F234', 'J003', 'K002', 'https://images-na.ssl-images-amazon.com/images/I/91VKfyGGkYL._AC_SX215_.jpg', 'god of war', 2010, 7000, 1, 20),
('F314', 'J001', 'K004', 'https://s4.bukalapak.com/img/483125675/w-1000/Dvd_Doraemon.png', 'doraemon', 2007, 9000, 1, 360),
('F411', 'J003', 'K004', 'https://www.mwpcgame.com/wp-content/uploads/2017/01/Iron-Man-cover-260x280.jpg', 'iron man', 2011, 7000, 1, 301),
('F451', 'J003', 'K004', 'https://images-na.ssl-images-amazon.com/images/I/A1t8xCe9jwL._SY679_.jpg', 'Avengers: Infinity War', 2018, 3000, 1, 500),
('F484', 'J004', 'K001', 'https://upload.wikimedia.org/wikipedia/en/thumb/f/f5/HotelTransylvania.jpg/220px-HotelTransylvania.jpg', 'Hotel transilvania', 2012, 8000, 1, 50),
('F611', 'J001', 'K001', 'https://images-na.ssl-images-amazon.com/images/I/81PPGkrQpWL._SY445_.jpg', 'despicable me', 2009, 13000, 1, 268),
('F612', 'J003', 'K004', 'https://upload.wikimedia.org/wikipedia/en/thumb/8/84/The_Amazing_Spider-Man_2_cover.png/220px-The_Amazing_Spider-Man_2_cover.png', 'the amazing spiderman', 2010, 10000, 1, 289),
('F710', 'J001', 'K001', 'https://vignette.wikia.nocookie.net/spongebob/images/8/8c/Sponge-Bob-Squarepants-vcd-inlay-1-1.jpg/revision/latest?cb=20170409162407', 'spongebob', 2007, 8000, 1, 0),
('F918', 'J003', 'K002', 'https://vignette.wikia.nocookie.net/naruto/images/d/da/Ultimate_Ninja_5.jpg/revision/latest?cb=20130728020710', 'naruto ultimate ninja 5', 2009, 9000, 1, 70);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `ID_JENIS` varchar(5) NOT NULL,
  `NAMA_JENIS` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`ID_JENIS`, `NAMA_JENIS`) VALUES
('J001', 'animasi'),
('J002', 'horror'),
('J003', 'action'),
('J004', 'comedy'),
('J005', 'romantic');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `ID_KATEGORI` varchar(5) NOT NULL,
  `NAMA_KATEGORI` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`ID_KATEGORI`, `NAMA_KATEGORI`) VALUES
('K001', 'movie'),
('K002', 'game'),
('K003', 'software'),
('K004', 'series');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjam`
--

CREATE TABLE `peminjam` (
  `ID_PEMINJAM` varchar(5) NOT NULL,
  `NAMA_PEMINJAM` varchar(25) DEFAULT NULL,
  `STATUS_PEMINJAM` int(11) DEFAULT NULL,
  `ALAMAT_PEMINJAM` varchar(50) DEFAULT NULL,
  `NO_HP_PEMINJAM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peminjam`
--

INSERT INTO `peminjam` (`ID_PEMINJAM`, `NAMA_PEMINJAM`, `STATUS_PEMINJAM`, `ALAMAT_PEMINJAM`, `NO_HP_PEMINJAM`) VALUES
('US001', 'Dandy Raka', 0, 'Jl Peterongan', 62822167),
('US002', 'Arif Fathur', 0, 'Gresik', 628569182),
('US003', 'Maulana Shura', 0, 'Sidoarjo', 62622212);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `ID_PETUGAS` varchar(5) NOT NULL,
  `NAMA_PETUGAS` varchar(25) DEFAULT NULL,
  `ALAMAT_PETUGAS` varchar(50) DEFAULT NULL,
  `NO_HP_PETUGAS` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`ID_PETUGAS`, `NAMA_PETUGAS`, `ALAMAT_PETUGAS`, `NO_HP_PETUGAS`) VALUES
('PE001', 'Ronaldo', 'Jl Sepanjang Gang 5 no 4', '08574544545'),
('PE002', 'Messi', 'Jl Margomulyo no 18', '085744634346');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_denda`
--

CREATE TABLE `transaksi_denda` (
  `ID_TRANSAKSI` varchar(5) NOT NULL,
  `JENIS_DENDA` varchar(5) DEFAULT NULL,
  `TANGGAL_KEMBALI` date DEFAULT NULL,
  `LAMA_TELAT` int(11) DEFAULT NULL,
  `JUMLAH_KEPING_KEMBALI` int(11) DEFAULT NULL,
  `TOTAL_BAYAR` int(11) DEFAULT NULL,
  `JUMLAH_DENDA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi_denda`
--

INSERT INTO `transaksi_denda` (`ID_TRANSAKSI`, `JENIS_DENDA`, `TANGGAL_KEMBALI`, `LAMA_TELAT`, `JUMLAH_KEPING_KEMBALI`, `TOTAL_BAYAR`, `JUMLAH_DENDA`) VALUES
('TRA04', 'M01', '2018-06-07', 1, 2, 8000, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_kembali`
--

CREATE TABLE `transaksi_kembali` (
  `ID_TRANSAKSI` varchar(5) NOT NULL,
  `TANGGAL_KEMBALI` date DEFAULT NULL,
  `JUMLAH_KEPING_KEMBALI` int(11) DEFAULT NULL,
  `TOTAL_BAYAR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi_kembali`
--

INSERT INTO `transaksi_kembali` (`ID_TRANSAKSI`, `TANGGAL_KEMBALI`, `JUMLAH_KEPING_KEMBALI`, `TOTAL_BAYAR`) VALUES
('TRA01', '2018-06-03', 1, 3000),
('TRA02', '2018-06-05', 1, 5000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_pinjam`
--

CREATE TABLE `transaksi_pinjam` (
  `ID_TRANSAKSI` varchar(5) NOT NULL,
  `ID_FILM` varchar(5) DEFAULT NULL,
  `ID_PEMINJAM` varchar(5) DEFAULT NULL,
  `ID_PETUGAS` varchar(5) DEFAULT NULL,
  `TANGGAL_PINJAM` date DEFAULT NULL,
  `TANGGAL_KEMBALI` date NOT NULL,
  `LAMA_PINJAM` int(11) DEFAULT NULL,
  `JAMINAN` varchar(10) DEFAULT NULL,
  `BAYAR_PINJAM` int(11) DEFAULT NULL,
  `JUMLAH_KEPING_PINJAM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi_pinjam`
--

INSERT INTO `transaksi_pinjam` (`ID_TRANSAKSI`, `ID_FILM`, `ID_PEMINJAM`, `ID_PETUGAS`, `TANGGAL_PINJAM`, `TANGGAL_KEMBALI`, `LAMA_PINJAM`, `JAMINAN`, `BAYAR_PINJAM`, `JUMLAH_KEPING_PINJAM`) VALUES
('TRA01', 'F111', 'US001', 'PE001', '2018-06-01', '2018-06-03', 2, 'KTP', 2500, 1),
('TRA02', 'F131', 'US002', 'PE001', '2018-06-01', '2018-06-05', 4, 'KTP', 3000, 1),
('TRA04', 'F451', 'US003', 'PE002', '2018-06-05', '2018-06-06', 1, 'KTP', 6000, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`ID_DENDA`);

--
-- Indeks untuk tabel `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`ID_FILM`),
  ADD KEY `FK_MENGISI_1` (`ID_KATEGORI`),
  ADD KEY `FK_MENGISI_2` (`ID_JENIS`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`ID_JENIS`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`ID_KATEGORI`);

--
-- Indeks untuk tabel `peminjam`
--
ALTER TABLE `peminjam`
  ADD PRIMARY KEY (`ID_PEMINJAM`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`ID_PETUGAS`);

--
-- Indeks untuk tabel `transaksi_denda`
--
ALTER TABLE `transaksi_denda`
  ADD PRIMARY KEY (`ID_TRANSAKSI`),
  ADD KEY `FK_MENGAKSES` (`JENIS_DENDA`);

--
-- Indeks untuk tabel `transaksi_kembali`
--
ALTER TABLE `transaksi_kembali`
  ADD PRIMARY KEY (`ID_TRANSAKSI`);

--
-- Indeks untuk tabel `transaksi_pinjam`
--
ALTER TABLE `transaksi_pinjam`
  ADD PRIMARY KEY (`ID_TRANSAKSI`),
  ADD KEY `FK_DILAKUKAN_OLEH` (`ID_PEMINJAM`),
  ADD KEY `FK_DILAYANI_OLEH` (`ID_PETUGAS`),
  ADD KEY `FK_MEMILIKI_1` (`ID_FILM`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `FK_MENGISI_1` FOREIGN KEY (`ID_KATEGORI`) REFERENCES `kategori` (`ID_KATEGORI`),
  ADD CONSTRAINT `FK_MENGISI_2` FOREIGN KEY (`ID_JENIS`) REFERENCES `jenis` (`ID_JENIS`);

--
-- Ketidakleluasaan untuk tabel `transaksi_denda`
--
ALTER TABLE `transaksi_denda`
  ADD CONSTRAINT `FK_BACA` FOREIGN KEY (`ID_TRANSAKSI`) REFERENCES `transaksi_pinjam` (`ID_TRANSAKSI`),
  ADD CONSTRAINT `FK_MENGAKSES` FOREIGN KEY (`JENIS_DENDA`) REFERENCES `denda` (`ID_DENDA`);

--
-- Ketidakleluasaan untuk tabel `transaksi_kembali`
--
ALTER TABLE `transaksi_kembali`
  ADD CONSTRAINT `FK_MEMBACA` FOREIGN KEY (`ID_TRANSAKSI`) REFERENCES `transaksi_pinjam` (`ID_TRANSAKSI`);

--
-- Ketidakleluasaan untuk tabel `transaksi_pinjam`
--
ALTER TABLE `transaksi_pinjam`
  ADD CONSTRAINT `FK_DILAKUKAN_OLEH` FOREIGN KEY (`ID_PEMINJAM`) REFERENCES `peminjam` (`ID_PEMINJAM`),
  ADD CONSTRAINT `FK_DILAYANI_OLEH` FOREIGN KEY (`ID_PETUGAS`) REFERENCES `petugas` (`ID_PETUGAS`),
  ADD CONSTRAINT `FK_MEMILIKI_1` FOREIGN KEY (`ID_FILM`) REFERENCES `film` (`ID_FILM`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
