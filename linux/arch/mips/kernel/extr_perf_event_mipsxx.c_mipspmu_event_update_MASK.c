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
struct perf_event {int /*<<< orphan*/  count; } ;
struct hw_perf_event {int /*<<< orphan*/  period_left; int /*<<< orphan*/  prev_count; } ;
struct TYPE_2__ {scalar_t__ (* read_counter ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_1__ mipspmu ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event,
				 struct hw_perf_event *hwc,
				 int idx)
{
	u64 prev_raw_count, new_raw_count;
	u64 delta;

again:
	prev_raw_count = FUNC2(&hwc->prev_count);
	new_raw_count = mipspmu.read_counter(idx);

	if (FUNC1(&hwc->prev_count, prev_raw_count,
				new_raw_count) != prev_raw_count)
		goto again;

	delta = new_raw_count - prev_raw_count;

	FUNC0(delta, &event->count);
	FUNC3(delta, &hwc->period_left);
}