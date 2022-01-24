#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct spi_ioc_transfer {unsigned long tx_buf; unsigned long rx_buf; size_t len; int tx_nbits; int rx_nbits; int /*<<< orphan*/  bits_per_word; int /*<<< orphan*/  speed_hz; int /*<<< orphan*/  delay_usecs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SPI_LOOP ; 
 int SPI_RX_DUAL ; 
 int SPI_RX_QUAD ; 
 int SPI_TX_DUAL ; 
 int SPI_TX_QUAD ; 
 int /*<<< orphan*/  bits ; 
 int /*<<< orphan*/  delay ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,size_t,int,char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,struct spi_ioc_transfer*) ; 
 int mode ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  speed ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void FUNC4(int fd, uint8_t const *tx, uint8_t const *rx, size_t len)
{
	int ret;

	struct spi_ioc_transfer tr = {
		.tx_buf = (unsigned long)tx,
		.rx_buf = (unsigned long)rx,
		.len = len,
		.delay_usecs = delay,
		.speed_hz = speed,
		.bits_per_word = bits,
	};

	if (mode & SPI_TX_QUAD)
		tr.tx_nbits = 4;
	else if (mode & SPI_TX_DUAL)
		tr.tx_nbits = 2;
	if (mode & SPI_RX_QUAD)
		tr.rx_nbits = 4;
	else if (mode & SPI_RX_DUAL)
		tr.rx_nbits = 2;
	if (!(mode & SPI_LOOP)) {
		if (mode & (SPI_TX_QUAD | SPI_TX_DUAL))
			tr.rx_buf = 0;
		else if (mode & (SPI_RX_QUAD | SPI_RX_DUAL))
			tr.tx_buf = 0;
	}

	ret = FUNC2(fd, FUNC0(1), &tr);
	if (ret < 1)
		FUNC3("can't send spi message");

	if (verbose)
		FUNC1(tx, len, 32, "TX");
	FUNC1(rx, len, 32, "RX");
}