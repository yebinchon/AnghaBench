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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  da850_lcd_backlight_info ; 
 int /*<<< orphan*/  da850_lcd_gpio_lookups ; 
 int /*<<< orphan*/  da850_lcd_supply_device ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void)
{
	struct platform_device *backlight;
	int status;

	FUNC3(da850_lcd_gpio_lookups,
				FUNC0(da850_lcd_gpio_lookups));

	backlight = FUNC5(&da850_lcd_backlight_info);
	if (FUNC1(backlight))
		return FUNC2(backlight);

	status = FUNC4(&da850_lcd_supply_device);
	if (status)
		return status;

	return 0;
}