#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct rb4xx_cpld_platform_data* platform_data; } ;
struct spi_device {int mode; int bits_per_word; TYPE_1__ dev; } ;
struct rb4xx_cpld_platform_data {int /*<<< orphan*/  gpio_base; } ;
struct rb4xx_cpld {int /*<<< orphan*/  spi; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SPI_MODE_0 ; 
 int SPI_TX_DUAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct rb4xx_cpld*) ; 
 int /*<<< orphan*/  FUNC3 (struct rb4xx_cpld*) ; 
 struct rb4xx_cpld* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct rb4xx_cpld* rb4xx_cpld ; 
 int FUNC6 (struct rb4xx_cpld*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_device*) ; 
 int FUNC8 (struct spi_device*) ; 

__attribute__((used)) static int FUNC9(struct spi_device *spi)
{
	struct rb4xx_cpld *cpld;
	struct rb4xx_cpld_platform_data *pdata;
	int err;

	pdata = spi->dev.platform_data;
	if (!pdata) {
		FUNC0(&spi->dev, "no platform data\n");
		return -EINVAL;
	}

	cpld = FUNC4(sizeof(*cpld), GFP_KERNEL);
	if (!cpld) {
		FUNC1(&spi->dev, "no memory for private data\n");
		return -ENOMEM;
	}

	FUNC5(&cpld->lock);
	cpld->spi = FUNC7(spi);
	FUNC2(&spi->dev, cpld);

	spi->mode = SPI_MODE_0 | SPI_TX_DUAL;
	spi->bits_per_word = 8;
	err = FUNC8(spi);
	if (err) {
		FUNC1(&spi->dev, "spi_setup failed, err=%d\n", err);
		goto err_drvdata;
	}

	err = FUNC6(cpld, pdata->gpio_base);
	if (err)
		goto err_drvdata;

	rb4xx_cpld = cpld;

	return 0;

err_drvdata:
	FUNC2(&spi->dev, NULL);
	FUNC3(cpld);

	return err;
}