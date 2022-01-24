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
struct hw_perf_event {int state; int config; size_t config_base; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_cf_events {int /*<<< orphan*/ * ctr_set; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int PERF_EF_RELOAD ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpu_cf_events ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 
 struct cpu_cf_events* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct perf_event *event, int flags)
{
	struct cpu_cf_events *cpuhw = FUNC5(&cpu_cf_events);
	struct hw_perf_event *hwc = &event->hw;

	if (FUNC0(!(hwc->state & PERF_HES_STOPPED)))
		return;

	if (FUNC0(hwc->config == -1))
		return;

	if (flags & PERF_EF_RELOAD)
		FUNC0(!(hwc->state & PERF_HES_UPTODATE));

	hwc->state = 0;

	/* (Re-)enable and activate the counter set */
	FUNC2(&cpuhw->state, hwc->config_base);
	FUNC3(&cpuhw->state, hwc->config_base);

	/* The counter set to which this counter belongs can be already active.
	 * Because all counters in a set are active, the event->hw.prev_count
	 * needs to be synchronized.  At this point, the counter set can be in
	 * the inactive or disabled state.
	 */
	FUNC4(event);

	/* increment refcount for this counter set */
	FUNC1(&cpuhw->ctr_set[hwc->config_base]);
}