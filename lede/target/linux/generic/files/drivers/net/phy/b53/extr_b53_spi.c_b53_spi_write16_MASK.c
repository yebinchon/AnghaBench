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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  txbuf ;
struct spi_device {int dummy; } ;
struct b53_device {struct spi_device* priv; } ;

/* Variables and functions */
 int B53_SPI_CMD_NORMAL ; 
 int B53_SPI_CMD_WRITE ; 
 int FUNC0 (struct spi_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct spi_device*,int*,int) ; 

__attribute__((used)) static int FUNC3(struct b53_device *dev, u8 page, u8 reg, u16 value)
{
	struct spi_device *spi = dev->priv;
	int ret;
	u8 txbuf[4];

	ret = FUNC0(spi, page);
	if (ret)
		return ret;

	txbuf[0] = B53_SPI_CMD_NORMAL | B53_SPI_CMD_WRITE;
	txbuf[1] = reg;
	FUNC1(value, &txbuf[2]);

	return FUNC2(spi, txbuf, sizeof(txbuf));
}