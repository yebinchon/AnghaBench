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

/* Variables and functions */
 int S3C_CAMIF_NUM_GPIOS ; 
 int /*<<< orphan*/  S3C_GPIO_PULL_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

int FUNC7(void)
{
	int gpio_start, gpio_reset;
	int ret, i;

	FUNC1(&gpio_start, &gpio_reset);

	for (i = 0; i < S3C_CAMIF_NUM_GPIOS; i++) {
		int gpio = gpio_start + i;

		if (gpio == gpio_reset)
			continue;

		ret = FUNC3(gpio, "camif");
		if (!ret)
			ret = FUNC5(gpio, FUNC0(2));
		if (ret) {
			FUNC4("failed to configure GPIO %d\n", gpio);
			for (--i; i >= 0; i--)
				FUNC2(gpio--);
			return ret;
		}
		FUNC6(gpio, S3C_GPIO_PULL_NONE);
	}

	return 0;
}