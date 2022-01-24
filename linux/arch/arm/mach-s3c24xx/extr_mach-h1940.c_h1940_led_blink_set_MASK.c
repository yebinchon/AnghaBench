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
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  GPIO_LED_BLINK 132 
#define  GPIO_LED_NO_BLINK_HIGH 131 
#define  GPIO_LED_NO_BLINK_LOW 130 
 int H1940_LATCH_LED_FLASH ; 
#define  H1940_LATCH_LED_GREEN 129 
#define  H1940_LATCH_LED_RED 128 
 int FUNC0 (int) ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  h1940_blink_spin ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct gpio_desc *desc, int state,
	unsigned long *delay_on, unsigned long *delay_off)
{
	int blink_gpio, check_gpio1, check_gpio2;
	int gpio = desc ? FUNC1(desc) : -EINVAL;

	switch (gpio) {
	case H1940_LATCH_LED_GREEN:
		blink_gpio = FUNC0(7);
		check_gpio1 = FUNC0(1);
		check_gpio2 = FUNC0(3);
		break;
	case H1940_LATCH_LED_RED:
		blink_gpio = FUNC0(1);
		check_gpio1 = FUNC0(7);
		check_gpio2 = FUNC0(3);
		break;
	default:
		blink_gpio = FUNC0(3);
		check_gpio1 = FUNC0(1);
		check_gpio2 = FUNC0(7);
		break;
	}

	if (delay_on && delay_off && !*delay_on && !*delay_off)
		*delay_on = *delay_off = 500;

	FUNC5(&h1940_blink_spin);

	switch (state) {
	case GPIO_LED_NO_BLINK_LOW:
	case GPIO_LED_NO_BLINK_HIGH:
		if (!FUNC2(check_gpio1) &&
		    !FUNC2(check_gpio2))
			FUNC4(H1940_LATCH_LED_FLASH, 0);
		FUNC4(blink_gpio, 0);
		if (FUNC3(gpio))
			FUNC4(gpio, state);
		break;
	case GPIO_LED_BLINK:
		if (FUNC3(gpio))
			FUNC4(gpio, 0);
		FUNC4(H1940_LATCH_LED_FLASH, 1);
		FUNC4(blink_gpio, 1);
		break;
	}

	FUNC6(&h1940_blink_spin);

	return 0;
}