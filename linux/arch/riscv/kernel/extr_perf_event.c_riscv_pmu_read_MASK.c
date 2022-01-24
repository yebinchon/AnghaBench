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
typedef  scalar_t__ u64 ;
struct hw_perf_event {int idx; int /*<<< orphan*/  prev_count; } ;
struct perf_event {int /*<<< orphan*/  count; struct hw_perf_event hw; } ;
struct TYPE_2__ {unsigned long long counter_width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 TYPE_1__* riscv_pmu ; 

__attribute__((used)) static void FUNC4(struct perf_event *event)
{
	struct hw_perf_event *hwc = &event->hw;
	u64 prev_raw_count, new_raw_count;
	u64 oldval;
	int idx = hwc->idx;
	u64 delta;

	do {
		prev_raw_count = FUNC2(&hwc->prev_count);
		new_raw_count = FUNC3(idx);

		oldval = FUNC1(&hwc->prev_count, prev_raw_count,
					 new_raw_count);
	} while (oldval != prev_raw_count);

	/*
	 * delta is the value to update the counter we maintain in the kernel.
	 */
	delta = (new_raw_count - prev_raw_count) &
		((1ULL << riscv_pmu->counter_width) - 1);
	FUNC0(delta, &event->count);
	/*
	 * Something like local64_sub(delta, &hwc->period_left) here is
	 * needed if there is an interrupt for perf.
	 */
}