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
struct pmu_hw_events {int /*<<< orphan*/  pmu_lock; } ;
struct hw_perf_event {int idx; unsigned int config_base; } ;
struct perf_event {int /*<<< orphan*/  attr; int /*<<< orphan*/  pmu; struct hw_perf_event hw; } ;
struct nds32_pmu {scalar_t__ (* set_event_filter ) (struct hw_perf_event*,int /*<<< orphan*/ *) ;struct pmu_hw_events* (* get_hw_events ) () ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nds32_pmu*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pmu_hw_events* FUNC10 () ; 
 scalar_t__ FUNC11 (struct hw_perf_event*,int /*<<< orphan*/ *) ; 
 struct nds32_pmu* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct perf_event *event)
{
	unsigned long flags;
	unsigned int evnum = 0;
	struct hw_perf_event *hwc = &event->hw;
	struct nds32_pmu *cpu_pmu = FUNC12(event->pmu);
	struct pmu_hw_events *events = cpu_pmu->get_hw_events();
	int idx = hwc->idx;

	if (!FUNC1(cpu_pmu, idx)) {
		FUNC6("CPU enabling wrong pfm counter IRQ enable\n");
		return;
	}

	/*
	 * Enable counter and interrupt, and set the counter to count
	 * the event that we're interested in.
	 */
	FUNC8(&events->pmu_lock, flags);

	/*
	 * Disable counter
	 */
	FUNC2(idx);

	/*
	 * Check whether we need to exclude the counter from certain modes.
	 */
	if ((!cpu_pmu->set_event_filter ||
	     cpu_pmu->set_event_filter(hwc, &event->attr)) &&
	     FUNC0(&event->attr)) {
		FUNC7
		("NDS32 performance counters do not support mode exclusion\n");
		hwc->config_base = 0;
	}
	/* Write event */
	evnum = hwc->config_base;
	FUNC5(idx, evnum);

	/*
	 * Enable interrupt for this counter
	 */
	FUNC4(idx);

	/*
	 * Enable counter
	 */
	FUNC3(idx);

	FUNC9(&events->pmu_lock, flags);
}