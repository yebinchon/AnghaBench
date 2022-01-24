#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct hw_perf_event {int sample_period; int /*<<< orphan*/  prev_count; int /*<<< orphan*/  event_base_rdpmc; } ;
struct perf_event {int /*<<< orphan*/  count; struct hw_perf_event hw; } ;
typedef  int s64 ;
struct TYPE_4__ {int /*<<< orphan*/  enabled; } ;
struct TYPE_3__ {int cntval_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__ cpu_hw_events ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__ x86_pmu ; 

__attribute__((used)) static int
FUNC7(struct perf_event *event, int count)
{
	struct hw_perf_event *hwc = &event->hw;
	int shift = 64 - x86_pmu.cntval_bits;
	u64 period = hwc->sample_period;
	u64 prev_raw_count, new_raw_count;
	s64 new, old;

	FUNC0(!period);

	/*
	 * drain_pebs() only happens when the PMU is disabled.
	 */
	FUNC0(FUNC6(cpu_hw_events.enabled));

	prev_raw_count = FUNC2(&hwc->prev_count);
	FUNC5(hwc->event_base_rdpmc, new_raw_count);
	FUNC3(&hwc->prev_count, new_raw_count);

	/*
	 * Since the counter increments a negative counter value and
	 * overflows on the sign switch, giving the interval:
	 *
	 *   [-period, 0]
	 *
	 * the difference between two consequtive reads is:
	 *
	 *   A) value2 - value1;
	 *      when no overflows have happened in between,
	 *
	 *   B) (0 - value1) + (value2 - (-period));
	 *      when one overflow happened in between,
	 *
	 *   C) (0 - value1) + (n - 1) * (period) + (value2 - (-period));
	 *      when @n overflows happened in between.
	 *
	 * Here A) is the obvious difference, B) is the extension to the
	 * discrete interval, where the first term is to the top of the
	 * interval and the second term is from the bottom of the next
	 * interval and C) the extension to multiple intervals, where the
	 * middle term is the whole intervals covered.
	 *
	 * An equivalent of C, by reduction, is:
	 *
	 *   value2 - value1 + n * period
	 */
	new = ((s64)(new_raw_count << shift) >> shift);
	old = ((s64)(prev_raw_count << shift) >> shift);
	FUNC1(new - old + count * period, &event->count);

	FUNC4(event);

	return 0;
}