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
typedef  int /*<<< orphan*/  u8 ;
struct spi_device {int dummy; } ;
struct b53_device {struct spi_device* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  B53_SPI_DATA ; 
 int FUNC0 (struct spi_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct spi_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct b53_device *dev, u8 page, u8 reg, u8 *data,
			unsigned len)
{
	struct spi_device *spi = dev->priv;
	int ret;

	ret = FUNC0(spi, page);
	if (ret)
		return ret;

	ret = FUNC1(spi, reg);
	if (ret)
		return ret;

	return FUNC2(spi, B53_SPI_DATA, data, len);
}