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
typedef  scalar_t__ u64 ;
struct perf_event {int /*<<< orphan*/  count; } ;
struct hw_perf_event {int /*<<< orphan*/  period_left; int /*<<< orphan*/  prev_count; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event,
				  struct hw_perf_event *hwc, int idx)
{
	u64 prev_raw_count = FUNC2(&hwc->prev_count);
	u64 new_raw_count = FUNC0(idx);
	s64 delta = new_raw_count - prev_raw_count;

	/*
	 * We aren't afraid of hwc->prev_count changing beneath our feet
	 * because there's no way for us to re-enter this function anytime.
	 */
	FUNC3(&hwc->prev_count, new_raw_count);
	FUNC1(delta, &event->count);
	FUNC4(delta, &hwc->period_left);
}