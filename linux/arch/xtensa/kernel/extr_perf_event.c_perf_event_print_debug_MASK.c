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
 unsigned int XCHAL_NUM_PERF_COUNTERS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  XTENSA_PMU_PMG ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(void)
{
	unsigned long flags;
	unsigned i;

	FUNC5(flags);
	FUNC6("CPU#%d: PMG: 0x%08lx\n", FUNC7(),
		FUNC3(XTENSA_PMU_PMG));
	for (i = 0; i < XCHAL_NUM_PERF_COUNTERS; ++i)
		FUNC6("PM%d: 0x%08lx, PMCTRL%d: 0x%08lx, PMSTAT%d: 0x%08lx\n",
			i, FUNC3(FUNC0(i)),
			i, FUNC3(FUNC1(i)),
			i, FUNC3(FUNC2(i)));
	FUNC4(flags);
}