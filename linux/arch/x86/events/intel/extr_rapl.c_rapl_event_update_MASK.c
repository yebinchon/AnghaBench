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
typedef  int u64 ;
struct hw_perf_event {int /*<<< orphan*/  config; int /*<<< orphan*/  prev_count; int /*<<< orphan*/  event_base; } ;
struct perf_event {int /*<<< orphan*/  count; struct hw_perf_event hw; } ;
typedef  int s64 ;

/* Variables and functions */
 int RAPL_CNTR_WIDTH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u64 FUNC6(struct perf_event *event)
{
	struct hw_perf_event *hwc = &event->hw;
	u64 prev_raw_count, new_raw_count;
	s64 delta, sdelta;
	int shift = RAPL_CNTR_WIDTH;

again:
	prev_raw_count = FUNC3(&hwc->prev_count);
	FUNC5(event->hw.event_base, new_raw_count);

	if (FUNC2(&hwc->prev_count, prev_raw_count,
			    new_raw_count) != prev_raw_count) {
		FUNC0();
		goto again;
	}

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

	sdelta = FUNC4(delta, event->hw.config);

	FUNC1(sdelta, &event->count);

	return new_raw_count;
}