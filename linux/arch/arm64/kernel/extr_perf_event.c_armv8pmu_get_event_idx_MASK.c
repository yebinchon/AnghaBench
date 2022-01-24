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
struct pmu_hw_events {int /*<<< orphan*/  used_mask; } ;
struct hw_perf_event {unsigned long config_base; } ;
struct perf_event {struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct arm_pmu {int dummy; } ;

/* Variables and functions */
 int ARMV8_IDX_CYCLE_COUNTER ; 
 unsigned long ARMV8_PMUV3_PERFCTR_CPU_CYCLES ; 
 unsigned long ARMV8_PMU_EVTYPE_EVENT ; 
 scalar_t__ FUNC0 (struct perf_event*) ; 
 int FUNC1 (struct pmu_hw_events*,struct arm_pmu*) ; 
 int FUNC2 (struct pmu_hw_events*,struct arm_pmu*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct arm_pmu* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pmu_hw_events *cpuc,
				  struct perf_event *event)
{
	struct arm_pmu *cpu_pmu = FUNC4(event->pmu);
	struct hw_perf_event *hwc = &event->hw;
	unsigned long evtype = hwc->config_base & ARMV8_PMU_EVTYPE_EVENT;

	/* Always prefer to place a cycle counter into the cycle counter. */
	if (evtype == ARMV8_PMUV3_PERFCTR_CPU_CYCLES) {
		if (!FUNC3(ARMV8_IDX_CYCLE_COUNTER, cpuc->used_mask))
			return ARMV8_IDX_CYCLE_COUNTER;
	}

	/*
	 * Otherwise use events counters
	 */
	if (FUNC0(event))
		return	FUNC1(cpuc, cpu_pmu);
	else
		return FUNC2(cpuc, cpu_pmu);
}