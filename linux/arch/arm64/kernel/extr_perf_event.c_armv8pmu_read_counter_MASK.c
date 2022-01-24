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
typedef  int /*<<< orphan*/  u64 ;
struct hw_perf_event {int idx; } ;
struct perf_event {struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct arm_pmu {int dummy; } ;

/* Variables and functions */
 int ARMV8_IDX_CYCLE_COUNTER ; 
 int /*<<< orphan*/  FUNC0 (struct arm_pmu*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  pmccntr_el0 ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct arm_pmu* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC6(struct perf_event *event)
{
	struct arm_pmu *cpu_pmu = FUNC5(event->pmu);
	struct hw_perf_event *hwc = &event->hw;
	int idx = hwc->idx;
	u64 value = 0;

	if (!FUNC0(cpu_pmu, idx))
		FUNC2("CPU%u reading wrong counter %d\n",
			FUNC4(), idx);
	else if (idx == ARMV8_IDX_CYCLE_COUNTER)
		value = FUNC3(pmccntr_el0);
	else
		value = FUNC1(event);

	return value;
}