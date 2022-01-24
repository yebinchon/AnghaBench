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
 int /*<<< orphan*/  CONFIG_EXYNOS_MCPM ; 
 int /*<<< orphan*/  CONFIG_HW_PERF_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  S5P_CORE_LOCAL_PWR_EN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 () ; 

__attribute__((used)) static void FUNC7(void)
{
	unsigned int mpidr, cluster;

	mpidr = FUNC6();
	cluster = FUNC2(mpidr, 1);

	if (FUNC1(CONFIG_EXYNOS_MCPM))
		FUNC3(FUNC4());

	if (FUNC1(CONFIG_HW_PERF_EVENTS) && cluster != 0) {
		/*
		 * When system is resumed on the LITTLE/KFC core (cluster 1),
		 * the DSCR is not properly updated until the power is turned
		 * on also for the cluster 0. Enable it for a while to
		 * propagate the SPNIDEN and SPIDEN signals from Secure JTAG
		 * block and avoid undefined instruction issue on CP14 reset.
		 */
		FUNC5(S5P_CORE_LOCAL_PWR_EN,
				FUNC0(0));
		FUNC5(0,
				FUNC0(0));
	}
}