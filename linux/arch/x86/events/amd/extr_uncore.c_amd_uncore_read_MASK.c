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
struct hw_perf_event {int /*<<< orphan*/  prev_count; int /*<<< orphan*/  event_base_rdpmc; } ;
struct perf_event {int /*<<< orphan*/  count; struct hw_perf_event hw; } ;
typedef  int s64 ;

/* Variables and functions */
 int COUNTER_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct perf_event *event)
{
	struct hw_perf_event *hwc = &event->hw;
	u64 prev, new;
	s64 delta;

	/*
	 * since we do not enable counter overflow interrupts,
	 * we do not have to worry about prev_count changing on us
	 */

	prev = FUNC1(&hwc->prev_count);
	FUNC3(hwc->event_base_rdpmc, new);
	FUNC2(&hwc->prev_count, new);
	delta = (new << COUNTER_SHIFT) - (prev << COUNTER_SHIFT);
	delta >>= COUNTER_SHIFT;
	FUNC0(delta, &event->count);
}