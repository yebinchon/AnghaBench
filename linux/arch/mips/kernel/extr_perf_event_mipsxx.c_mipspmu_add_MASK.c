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
struct hw_perf_event {int idx; int state; } ;
struct perf_event {int /*<<< orphan*/  pmu; struct hw_perf_event hw; } ;
struct cpu_hw_events {struct perf_event** events; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_EF_RELOAD ; 
 int PERF_EF_START ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 int /*<<< orphan*/  cpu_hw_events ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cpu_hw_events*,struct hw_perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct cpu_hw_events* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct perf_event *event, int flags)
{
	struct cpu_hw_events *cpuc = FUNC6(&cpu_hw_events);
	struct hw_perf_event *hwc = &event->hw;
	int idx;
	int err = 0;

	FUNC4(event->pmu);

	/* To look for a free counter for this event. */
	idx = FUNC1(cpuc, hwc);
	if (idx < 0) {
		err = idx;
		goto out;
	}

	/*
	 * If there is an event in the counter we are going to use then
	 * make sure it is disabled.
	 */
	event->hw.idx = idx;
	FUNC2(idx);
	cpuc->events[idx] = event;

	hwc->state = PERF_HES_STOPPED | PERF_HES_UPTODATE;
	if (flags & PERF_EF_START)
		FUNC0(event, PERF_EF_RELOAD);

	/* Propagate our changes to the userspace mapping. */
	FUNC3(event);

out:
	FUNC5(event->pmu);
	return err;
}