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
 int /*<<< orphan*/  CORE_MOD ; 
 int /*<<< orphan*/  OMAP24XX_PM_WKST2 ; 
 int /*<<< orphan*/  PM_WKST ; 
 int /*<<< orphan*/  PM_WKST1 ; 
 int /*<<< orphan*/  PWRDM_POWER_ON ; 
 int /*<<< orphan*/  PWRDM_POWER_RET ; 
 int /*<<< orphan*/  WKUP_MOD ; 
 int /*<<< orphan*/  mpu_pwrdm ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	const int zero = 0;

	/* The peripherals seem not to be able to wake up the MPU when
	 * it is in retention mode. */
	if (FUNC0()) {
		/* REVISIT: These write to reserved bits? */
		FUNC1(CORE_MOD, PM_WKST1, ~0);
		FUNC1(CORE_MOD, OMAP24XX_PM_WKST2, ~0);
		FUNC1(WKUP_MOD, PM_WKST, ~0);

		/* Try to enter MPU retention */
		FUNC2(mpu_pwrdm, PWRDM_POWER_RET);

	} else {
		/* Block MPU retention */
		FUNC2(mpu_pwrdm, PWRDM_POWER_ON);
	}

	/* WFI */
	asm("mcr p15, 0, %0, c7, c0, 4" : : "r" (zero) : "memory", "cc");

	FUNC2(mpu_pwrdm, PWRDM_POWER_ON);
}