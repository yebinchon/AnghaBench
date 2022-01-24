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
struct pmu {int dummy; } ;
struct hw_perf_event {int idx; int state; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {int n_added; int enabled; int n_events; struct perf_event** event_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable_all ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_EF_RELOAD ; 
 int /*<<< orphan*/  PERF_EF_UPDATE ; 
 int PERF_HES_ARCH ; 
 int PERF_HES_STOPPED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 scalar_t__ FUNC1 (struct hw_perf_event*,struct cpu_hw_events*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct cpu_hw_events* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*,struct cpu_hw_events*,int) ; 
 TYPE_1__ x86_pmu ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct perf_event*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct pmu *pmu)
{
	struct cpu_hw_events *cpuc = FUNC4(&cpu_hw_events);
	struct perf_event *event;
	struct hw_perf_event *hwc;
	int i, added = cpuc->n_added;

	if (!FUNC6())
		return;

	if (cpuc->enabled)
		return;

	if (cpuc->n_added) {
		int n_running = cpuc->n_events - cpuc->n_added;
		/*
		 * apply assignment obtained either from
		 * hw_perf_group_sched_in() or x86_pmu_enable()
		 *
		 * step1: save events moving to new counters
		 */
		for (i = 0; i < n_running; i++) {
			event = cpuc->event_list[i];
			hwc = &event->hw;

			/*
			 * we can avoid reprogramming counter if:
			 * - assigned same counter as last time
			 * - running on same CPU as last time
			 * - no other event has used the counter since
			 */
			if (hwc->idx == -1 ||
			    FUNC1(hwc, cpuc, i))
				continue;

			/*
			 * Ensure we don't accidentally enable a stopped
			 * counter simply because we rescheduled.
			 */
			if (hwc->state & PERF_HES_STOPPED)
				hwc->state |= PERF_HES_ARCH;

			FUNC8(event, PERF_EF_UPDATE);
		}

		/*
		 * step2: reprogram moved events into new counters
		 */
		for (i = 0; i < cpuc->n_events; i++) {
			event = cpuc->event_list[i];
			hwc = &event->hw;

			if (!FUNC1(hwc, cpuc, i))
				FUNC5(event, cpuc, i);
			else if (i < n_running)
				continue;

			if (hwc->state & PERF_HES_ARCH)
				continue;

			FUNC7(event, PERF_EF_RELOAD);
		}
		cpuc->n_added = 0;
		FUNC2();
	}

	cpuc->enabled = 1;
	FUNC0();

	x86_pmu.enable_all(added);
}