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
struct led_classdev {int dummy; } ;
struct ar8327_led {int enable_hw_mode; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR8327_LED_PATTERN_BLINK ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ar8327_led*,int /*<<< orphan*/ ) ; 
 struct ar8327_led* FUNC1 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct led_classdev *led_cdev,
		     unsigned long *delay_on,
		     unsigned long *delay_off)
{
	struct ar8327_led *aled = FUNC1(led_cdev);

	if (*delay_on == 0 && *delay_off == 0) {
		*delay_on = 125;
		*delay_off = 125;
	}

	if (*delay_on != 125 || *delay_off != 125) {
		/*
		 * The hardware only supports blinking at 4Hz. Fall back
		 * to software implementation in other cases.
		 */
		return -EINVAL;
	}

	FUNC2(&aled->lock);

	aled->enable_hw_mode = false;
	FUNC0(aled, AR8327_LED_PATTERN_BLINK);

	FUNC3(&aled->lock);

	return 0;
}