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
 int /*<<< orphan*/  PMU_PWDCR ; 
 int /*<<< orphan*/  PMU_PWDSR ; 
 int /*<<< orphan*/  g_pmu_lock ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(unsigned int module)
{
	int retry = 1000000;

	FUNC3(&g_pmu_lock);
	FUNC2(FUNC1(PMU_PWDCR) & ~module, PMU_PWDCR);
	do {} while (--retry && (FUNC1(PMU_PWDSR) & module));
	FUNC4(&g_pmu_lock);

	if (!retry)
		FUNC0("activating PMU module failed!");
}