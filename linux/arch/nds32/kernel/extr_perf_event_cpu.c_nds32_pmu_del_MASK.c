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
struct pmu_hw_events {int /*<<< orphan*/  used_mask; int /*<<< orphan*/ ** events; } ;
struct hw_perf_event {int idx; } ;
struct perf_event {struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct nds32_pmu {struct pmu_hw_events* (* get_hw_events ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_EF_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 struct pmu_hw_events* FUNC3 () ; 
 struct nds32_pmu* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event, int flags)
{
	struct nds32_pmu *nds32_pmu = FUNC4(event->pmu);
	struct pmu_hw_events *hw_events = nds32_pmu->get_hw_events();
	struct hw_perf_event *hwc = &event->hw;
	int idx = hwc->idx;

	FUNC1(event, PERF_EF_UPDATE);
	hw_events->events[idx] = NULL;
	FUNC0(idx, hw_events->used_mask);

	FUNC2(event);
}