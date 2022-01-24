#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  config; } ;
struct perf_event {TYPE_1__ hw; } ;
struct cpu_hw_events {int intel_ctrl_guest_mask; struct perf_event** events; int /*<<< orphan*/  active_mask; } ;
struct TYPE_4__ {int intel_ctrl; } ;

/* Variables and functions */
 size_t INTEL_PMC_IDX_FIXED_BTS ; 
 int /*<<< orphan*/  MSR_CORE_PERF_GLOBAL_CTRL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 struct cpu_hw_events* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__ x86_pmu ; 

__attribute__((used)) static void FUNC7(int added, bool pmi)
{
	struct cpu_hw_events *cpuc = FUNC5(&cpu_hw_events);

	FUNC3();
	FUNC2(pmi);
	FUNC6(MSR_CORE_PERF_GLOBAL_CTRL,
			x86_pmu.intel_ctrl & ~cpuc->intel_ctrl_guest_mask);

	if (FUNC4(INTEL_PMC_IDX_FIXED_BTS, cpuc->active_mask)) {
		struct perf_event *event =
			cpuc->events[INTEL_PMC_IDX_FIXED_BTS];

		if (FUNC0(!event))
			return;

		FUNC1(event->hw.config);
	}
}