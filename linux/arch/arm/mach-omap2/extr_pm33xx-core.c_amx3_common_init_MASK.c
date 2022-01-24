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
 int ENODEV ; 
 scalar_t__ OMAP2_DEVICE_TYPE_GP ; 
 int /*<<< orphan*/  PWRDM_POWER_OFF ; 
 void* cefuse_pwrdm ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* gfx_pwrdm ; 
 void* mpu_pwrdm ; 
 int /*<<< orphan*/  omap_pm_clkdms_setup ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 void* per_pwrdm ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 void* FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(void)
{
	gfx_pwrdm = FUNC5("gfx_pwrdm");
	per_pwrdm = FUNC5("per_pwrdm");
	mpu_pwrdm = FUNC5("mpu_pwrdm");

	if ((!gfx_pwrdm) || (!per_pwrdm) || (!mpu_pwrdm))
		return -ENODEV;

	(void)FUNC0(omap_pm_clkdms_setup, NULL);

	/* CEFUSE domain can be turned off post bootup */
	cefuse_pwrdm = FUNC5("cefuse_pwrdm");
	if (!cefuse_pwrdm)
		FUNC3("PM: Failed to get cefuse_pwrdm\n");
	else if (FUNC2() != OMAP2_DEVICE_TYPE_GP)
		FUNC4("PM: Leaving EFUSE power domain active\n");
	else
		FUNC1(cefuse_pwrdm, PWRDM_POWER_OFF);

	return 0;
}