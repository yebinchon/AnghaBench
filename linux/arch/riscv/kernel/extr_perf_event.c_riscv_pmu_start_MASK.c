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
struct hw_perf_event {int state; int /*<<< orphan*/  idx; int /*<<< orphan*/  prev_count; } ;
struct perf_event {struct hw_perf_event hw; } ;

/* Variables and functions */
 int PERF_EF_RELOAD ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct perf_event *event, int flags)
{
	struct hw_perf_event *hwc = &event->hw;

	if (FUNC0(!(event->hw.state & PERF_HES_STOPPED)))
		return;

	if (flags & PERF_EF_RELOAD) {
		FUNC0(!(event->hw.state & PERF_HES_UPTODATE));

		/*
		 * Set the counter to the period to the next interrupt here,
		 * if you have any.
		 */
	}

	hwc->state = 0;
	FUNC2(event);

	/*
	 * Since we cannot write to counters, this serves as an initialization
	 * to the delta-mechanism in pmu->read(); otherwise, the delta would be
	 * wrong when pmu->read is called for the first time.
	 */
	FUNC1(&hwc->prev_count, FUNC3(hwc->idx));
}