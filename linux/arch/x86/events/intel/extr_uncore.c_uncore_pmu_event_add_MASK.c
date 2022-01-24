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
struct hw_perf_event {int idx; int state; scalar_t__ last_tag; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct intel_uncore_box {int n_events; scalar_t__* tags; struct perf_event** event_list; } ;

/* Variables and functions */
 int ENODEV ; 
 int PERF_EF_START ; 
 int /*<<< orphan*/  PERF_EF_UPDATE ; 
 int PERF_HES_ARCH ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 int UNCORE_PMC_IDX_MAX ; 
 int FUNC0 (struct intel_uncore_box*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uncore_box*,struct perf_event*,int) ; 
 int FUNC2 (struct intel_uncore_box*,struct perf_event*,int) ; 
 struct intel_uncore_box* FUNC3 (struct perf_event*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*,int /*<<< orphan*/ ) ; 

int FUNC7(struct perf_event *event, int flags)
{
	struct intel_uncore_box *box = FUNC3(event);
	struct hw_perf_event *hwc = &event->hw;
	int assign[UNCORE_PMC_IDX_MAX];
	int i, n, ret;

	if (!box)
		return -ENODEV;

	/*
	 * The free funning counter is assigned in event_init().
	 * The free running counter event and free running counter
	 * are 1:1 mapped. It doesn't need to be tracked in event_list.
	 */
	if (FUNC4(hwc->idx)) {
		if (flags & PERF_EF_START)
			FUNC5(event, 0);
		return 0;
	}

	ret = n = FUNC2(box, event, false);
	if (ret < 0)
		return ret;

	hwc->state = PERF_HES_UPTODATE | PERF_HES_STOPPED;
	if (!(flags & PERF_EF_START))
		hwc->state |= PERF_HES_ARCH;

	ret = FUNC0(box, assign, n);
	if (ret)
		return ret;

	/* save events moving to new counters */
	for (i = 0; i < box->n_events; i++) {
		event = box->event_list[i];
		hwc = &event->hw;

		if (hwc->idx == assign[i] &&
			hwc->last_tag == box->tags[assign[i]])
			continue;
		/*
		 * Ensure we don't accidentally enable a stopped
		 * counter simply because we rescheduled.
		 */
		if (hwc->state & PERF_HES_STOPPED)
			hwc->state |= PERF_HES_ARCH;

		FUNC6(event, PERF_EF_UPDATE);
	}

	/* reprogram moved events into new counters */
	for (i = 0; i < n; i++) {
		event = box->event_list[i];
		hwc = &event->hw;

		if (hwc->idx != assign[i] ||
			hwc->last_tag != box->tags[assign[i]])
			FUNC1(box, event, assign[i]);
		else if (i < box->n_events)
			continue;

		if (hwc->state & PERF_HES_ARCH)
			continue;

		FUNC5(event, 0);
	}
	box->n_events = n;

	return 0;
}