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
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  S3C_GPIO_PULL_NONE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	unsigned int gpio;

	for (gpio = FUNC0(1); gpio <= FUNC0(4); gpio++) {
		FUNC3(gpio, FUNC2(2));
		FUNC4(gpio, S3C_GPIO_PULL_NONE);
	}

	for (gpio = FUNC0(8); gpio <= FUNC0(15); gpio++) {
		FUNC3(gpio, FUNC2(2));
		FUNC4(gpio, S3C_GPIO_PULL_NONE);
	}

	for (gpio = FUNC1(0); gpio <= FUNC1(15); gpio++) {
		FUNC3(gpio, FUNC2(2));
		FUNC4(gpio, S3C_GPIO_PULL_NONE);
	}
}