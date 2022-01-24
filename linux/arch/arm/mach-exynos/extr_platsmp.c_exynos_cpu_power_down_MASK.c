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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  EXYNOS5_ARM_CORE0_SYS_PWR_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int S5P_CORE_LOCAL_PWR_EN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 

void FUNC5(int cpu)
{
	u32 core_conf;

	if (cpu == 0 && (FUNC3() || FUNC4())) {
		/*
		 * Bypass power down for CPU0 during suspend. Check for
		 * the SYS_PWR_REG value to decide if we are suspending
		 * the system.
		 */
		int val = FUNC1(EXYNOS5_ARM_CORE0_SYS_PWR_REG);

		if (!(val & S5P_CORE_LOCAL_PWR_EN))
			return;
	}

	core_conf = FUNC1(FUNC0(cpu));
	core_conf &= ~S5P_CORE_LOCAL_PWR_EN;
	FUNC2(core_conf, FUNC0(cpu));
}