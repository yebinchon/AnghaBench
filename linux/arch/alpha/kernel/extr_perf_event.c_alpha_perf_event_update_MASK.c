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
struct perf_event {int /*<<< orphan*/  count; } ;
struct hw_perf_event {int /*<<< orphan*/  period_left; int /*<<< orphan*/  prev_count; } ;
struct TYPE_2__ {long* pmc_count_mask; scalar_t__* pmc_max_period; } ;

/* Variables and functions */
 TYPE_1__* alpha_pmu ; 
 long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (long,int /*<<< orphan*/ *) ; 
 long FUNC2 (int /*<<< orphan*/ *,long,long) ; 
 long FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static unsigned long FUNC6(struct perf_event *event,
					struct hw_perf_event *hwc, int idx, long ovf)
{
	long prev_raw_count, new_raw_count;
	long delta;

again:
	prev_raw_count = FUNC3(&hwc->prev_count);
	new_raw_count = FUNC0(idx);

	if (FUNC2(&hwc->prev_count, prev_raw_count,
			     new_raw_count) != prev_raw_count)
		goto again;

	delta = (new_raw_count - (prev_raw_count & alpha_pmu->pmc_count_mask[idx])) + ovf;

	/* It is possible on very rare occasions that the PMC has overflowed
	 * but the interrupt is yet to come.  Detect and fix this situation.
	 */
	if (FUNC5(delta < 0)) {
		delta += alpha_pmu->pmc_max_period[idx] + 1;
	}

	FUNC1(delta, &event->count);
	FUNC4(delta, &hwc->period_left);

	return new_raw_count;
}