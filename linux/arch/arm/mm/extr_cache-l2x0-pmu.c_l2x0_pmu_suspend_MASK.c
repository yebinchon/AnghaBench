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
 int /*<<< orphan*/  PERF_EF_UPDATE ; 
 int PMU_NR_COUNTERS ; 
 scalar_t__* events ; 
 int /*<<< orphan*/  l2x0_pmu ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	int i;

	if (!l2x0_pmu)
		return;

	FUNC0(l2x0_pmu);

	for (i = 0; i < PMU_NR_COUNTERS; i++) {
		if (events[i])
			FUNC1(events[i], PERF_EF_UPDATE);
	}

}