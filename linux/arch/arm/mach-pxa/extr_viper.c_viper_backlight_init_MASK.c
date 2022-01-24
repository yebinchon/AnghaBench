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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIPER_BCKLIGHT_EN_GPIO ; 
 int /*<<< orphan*/  VIPER_LCD_EN_GPIO ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	int ret;

	/* GPIO9 and 10 control FB backlight. Initialise to off */
	ret = FUNC3(VIPER_BCKLIGHT_EN_GPIO, "Backlight");
	if (ret)
		goto err_request_bckl;

	ret = FUNC3(VIPER_LCD_EN_GPIO, "LCD");
	if (ret)
		goto err_request_lcd;

	ret = FUNC1(VIPER_BCKLIGHT_EN_GPIO, 0);
	if (ret)
		goto err_dir;

	ret = FUNC1(VIPER_LCD_EN_GPIO, 0);
	if (ret)
		goto err_dir;

	return 0;

err_dir:
	FUNC2(VIPER_LCD_EN_GPIO);
err_request_lcd:
	FUNC2(VIPER_BCKLIGHT_EN_GPIO);
err_request_bckl:
	FUNC0(dev, "Failed to setup LCD GPIOs\n");

	return ret;
}