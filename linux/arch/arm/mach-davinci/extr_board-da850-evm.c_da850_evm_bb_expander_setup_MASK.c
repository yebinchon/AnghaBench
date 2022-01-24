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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  da850_evm_bb_keys_device ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  da850_evm_bb_leds_device ; 
 int /*<<< orphan*/  da850_evm_bb_leds_gpio_table ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
						unsigned gpio, unsigned ngpio,
						void *c)
{
	int ret;

	/*
	 * Register the switches and pushbutton on the baseboard as a gpio-keys
	 * device.
	 */
	FUNC0(gpio);
	ret = FUNC2(&da850_evm_bb_keys_device);
	if (ret) {
		FUNC4("Could not register baseboard GPIO expander keys");
		goto io_exp_setup_sw_fail;
	}

	FUNC1(&da850_evm_bb_leds_gpio_table);
	ret = FUNC2(&da850_evm_bb_leds_device);
	if (ret) {
		FUNC4("Could not register baseboard GPIO expander LEDs");
		goto io_exp_setup_leds_fail;
	}

	return 0;

io_exp_setup_leds_fail:
	FUNC3(&da850_evm_bb_keys_device);
io_exp_setup_sw_fail:
	return ret;
}