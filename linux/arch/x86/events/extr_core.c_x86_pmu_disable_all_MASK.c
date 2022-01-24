#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct cpu_hw_events {int /*<<< orphan*/  active_mask; } ;
struct TYPE_2__ {int num_counters; } ;

/* Variables and functions */
 int ARCH_PERFMON_EVENTSEL_ENABLE ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct cpu_hw_events* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ x86_pmu ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(void)
{
	struct cpu_hw_events *cpuc = FUNC2(&cpu_hw_events);
	int idx;

	for (idx = 0; idx < x86_pmu.num_counters; idx++) {
		u64 val;

		if (!FUNC1(idx, cpuc->active_mask))
			continue;
		FUNC0(FUNC4(idx), val);
		if (!(val & ARCH_PERFMON_EVENTSEL_ENABLE))
			continue;
		val &= ~ARCH_PERFMON_EVENTSEL_ENABLE;
		FUNC3(FUNC4(idx), val);
	}
}