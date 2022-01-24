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
struct plat_lcd_data {int dummy; } ;
struct gpio_chip {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ ENXIO ; 
 scalar_t__ GPIO_MC9S08DZ60_LCD_ENABLE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned int) ; 
 struct gpio_chip* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ lcd_power_gpio ; 
 int /*<<< orphan*/  mc9s08dz60_gpiochip_match ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(
				struct plat_lcd_data *pd, unsigned int power)
{
	struct gpio_chip *chip;

	if (!FUNC0(lcd_power_gpio)) {
		chip = FUNC3(
				"mc9s08dz60", mc9s08dz60_gpiochip_match);
		if (chip) {
			lcd_power_gpio =
				chip->base + GPIO_MC9S08DZ60_LCD_ENABLE;
			if (FUNC1(lcd_power_gpio, "lcd_power") < 0) {
				FUNC4("error: gpio already requested!\n");
				lcd_power_gpio = -ENXIO;
			}
		} else {
			FUNC4("error: didn't find mc9s08dz60 gpio chip\n");
		}
	}

	if (FUNC0(lcd_power_gpio))
		FUNC2(lcd_power_gpio, power);
}