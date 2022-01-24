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
struct TYPE_2__ {int idx; int state; int /*<<< orphan*/  prev_count; } ;
struct perf_event {TYPE_1__ hw; int /*<<< orphan*/  active_entry; } ;
struct intel_uncore_box {int n_active; int /*<<< orphan*/  active_mask; struct perf_event** events; int /*<<< orphan*/  active_list; } ;

/* Variables and functions */
 int PERF_HES_STOPPED ; 
 int UNCORE_PMC_IDX_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uncore_box*,struct perf_event*) ; 
 struct intel_uncore_box* FUNC5 (struct perf_event*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_uncore_box*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_uncore_box*,struct perf_event*) ; 

void FUNC9(struct perf_event *event, int flags)
{
	struct intel_uncore_box *box = FUNC5(event);
	int idx = event->hw.idx;

	if (FUNC0(idx == -1 || idx >= UNCORE_PMC_IDX_MAX))
		return;

	/*
	 * Free running counter is read-only and always active.
	 * Use the current counter value as start point.
	 * There is no overflow interrupt for free running counter.
	 * Use hrtimer to periodically poll the counter to avoid overflow.
	 */
	if (FUNC6(event->hw.idx)) {
		FUNC2(&event->active_entry, &box->active_list);
		FUNC3(&event->hw.prev_count,
			    FUNC8(box, event));
		if (box->n_active++ == 0)
			FUNC7(box);
		return;
	}

	if (FUNC0(!(event->hw.state & PERF_HES_STOPPED)))
		return;

	event->hw.state = 0;
	box->events[idx] = event;
	box->n_active++;
	FUNC1(idx, box->active_mask);

	FUNC3(&event->hw.prev_count, FUNC8(box, event));
	FUNC4(box, event);

	if (box->n_active == 1)
		FUNC7(box);
}