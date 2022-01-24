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
typedef  int u64 ;
struct hw_perf_event {int idx; int /*<<< orphan*/  period_left; int /*<<< orphan*/  prev_count; int /*<<< orphan*/  event_base_rdpmc; } ;
struct perf_event {int /*<<< orphan*/  count; struct hw_perf_event hw; } ;
struct TYPE_2__ {int cntval_bits; } ;

/* Variables and functions */
 int INTEL_PMC_IDX_FIXED_BTS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ x86_pmu ; 

u64 FUNC5(struct perf_event *event)
{
	struct hw_perf_event *hwc = &event->hw;
	int shift = 64 - x86_pmu.cntval_bits;
	u64 prev_raw_count, new_raw_count;
	int idx = hwc->idx;
	u64 delta;

	if (idx == INTEL_PMC_IDX_FIXED_BTS)
		return 0;

	/*
	 * Careful: an NMI might modify the previous event value.
	 *
	 * Our tactic to handle this is to first atomically read and
	 * exchange a new raw count - then add that new-prev delta
	 * count to the generic event atomically:
	 */
again:
	prev_raw_count = FUNC2(&hwc->prev_count);
	FUNC4(hwc->event_base_rdpmc, new_raw_count);

	if (FUNC1(&hwc->prev_count, prev_raw_count,
					new_raw_count) != prev_raw_count)
		goto again;

	/*
	 * Now we have the new raw value and have updated the prev
	 * timestamp already. We can now calculate the elapsed delta
	 * (event-)time and add that to the generic event.
	 *
	 * Careful, not all hw sign-extends above the physical width
	 * of the count.
	 */
	delta = (new_raw_count << shift) - (prev_raw_count << shift);
	delta >>= shift;

	FUNC0(delta, &event->count);
	FUNC3(delta, &hwc->period_left);

	return new_raw_count;
}