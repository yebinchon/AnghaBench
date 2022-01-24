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
typedef  int u64 ;
struct hw_perf_event {int idx; } ;
struct perf_event {struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct arm_pmu {int dummy; } ;

/* Variables and functions */
 int ARMV8_IDX_CYCLE_COUNTER ; 
 int /*<<< orphan*/  FUNC0 (struct arm_pmu*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,int) ; 
 int /*<<< orphan*/  pmccntr_el0 ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct arm_pmu* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct perf_event *event, u64 value)
{
	struct arm_pmu *cpu_pmu = FUNC5(event->pmu);
	struct hw_perf_event *hwc = &event->hw;
	int idx = hwc->idx;

	if (!FUNC0(cpu_pmu, idx))
		FUNC3("CPU%u writing wrong counter %d\n",
			FUNC4(), idx);
	else if (idx == ARMV8_IDX_CYCLE_COUNTER) {
		/*
		 * The cycles counter is really a 64-bit counter.
		 * When treating it as a 32-bit counter, we only count
		 * the lower 32 bits, and set the upper 32-bits so that
		 * we get an interrupt upon 32-bit overflow.
		 */
		if (!FUNC1(event))
			value |= 0xffffffff00000000ULL;
		FUNC6(value, pmccntr_el0);
	} else
		FUNC2(event, value);
}