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
struct tpm_chip {int /*<<< orphan*/  dev; } ;
struct st33zp24_spi_phy {int io_lpcpd; } ;
struct st33zp24_dev {struct st33zp24_spi_phy* phy_id; } ;
struct device {int dummy; } ;
struct spi_device {struct device dev; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int /*<<< orphan*/  acpi_st33zp24_gpios ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct st33zp24_dev* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct tpm_chip* FUNC6 (struct spi_device*) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi_dev)
{
	struct tpm_chip *chip = FUNC6(spi_dev);
	struct st33zp24_dev *tpm_dev = FUNC3(&chip->dev);
	struct st33zp24_spi_phy *phy = tpm_dev->phy_id;
	struct gpio_desc *gpiod_lpcpd;
	struct device *dev = &spi_dev->dev;
	int ret;

	ret = FUNC4(dev, acpi_st33zp24_gpios);
	if (ret)
		return ret;

	/* Get LPCPD GPIO from ACPI */
	gpiod_lpcpd = FUNC5(dev, "lpcpd", GPIOD_OUT_HIGH);
	if (FUNC0(gpiod_lpcpd)) {
		FUNC2(dev, "Failed to retrieve lpcpd-gpios from acpi.\n");
		phy->io_lpcpd = -1;
		/*
		 * lpcpd pin is not specified. This is not an issue as
		 * power management can be also managed by TPM specific
		 * commands. So leave with a success status code.
		 */
		return 0;
	}

	phy->io_lpcpd = FUNC1(gpiod_lpcpd);

	return 0;
}