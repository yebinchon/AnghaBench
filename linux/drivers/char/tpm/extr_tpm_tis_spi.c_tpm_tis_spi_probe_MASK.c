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
struct tpm_tis_spi_phy {int /*<<< orphan*/  priv; int /*<<< orphan*/  iobuf; struct spi_device* spi_device; } ;
struct spi_device {int irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_SPI_FRAMESIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tpm_tis_spi_phy* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tpm_spi_phy_ops ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct spi_device *dev)
{
	struct tpm_tis_spi_phy *phy;
	int irq;

	phy = FUNC1(&dev->dev, sizeof(struct tpm_tis_spi_phy),
			   GFP_KERNEL);
	if (!phy)
		return -ENOMEM;

	phy->spi_device = dev;

	phy->iobuf = FUNC0(&dev->dev, MAX_SPI_FRAMESIZE, GFP_KERNEL);
	if (!phy->iobuf)
		return -ENOMEM;

	/* If the SPI device has an IRQ then use that */
	if (dev->irq > 0)
		irq = dev->irq;
	else
		irq = -1;

	return FUNC2(&dev->dev, &phy->priv, irq, &tpm_spi_phy_ops,
				 NULL);
}