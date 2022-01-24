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
struct hw_perf_event {int idx; } ;
struct perf_event {int /*<<< orphan*/  pmu; struct hw_perf_event hw; } ;
struct nds32_pmu {struct pmu_hw_events* (* get_hw_events ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nds32_pmu*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pmu_hw_events* FUNC6 () ; 
 struct nds32_pmu* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct perf_event *event)
{
	unsigned long flags;
	struct hw_perf_event *hwc = &event->hw;
	struct nds32_pmu *cpu_pmu = FUNC7(event->pmu);
	struct pmu_hw_events *events = cpu_pmu->get_hw_events();
	int idx = hwc->idx;

	if (!FUNC0(cpu_pmu, idx)) {
		FUNC3("CPU disabling wrong pfm counter IRQ enable %d\n", idx);
		return;
	}

	/*
	 * Disable counter and interrupt
	 */
	FUNC4(&events->pmu_lock, flags);

	/*
	 * Disable counter
	 */
	FUNC1(idx);

	/*
	 * Disable interrupt for this counter
	 */
	FUNC2(idx);

	FUNC5(&events->pmu_lock, flags);
}