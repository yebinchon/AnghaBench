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
struct TYPE_2__ {int /*<<< orphan*/  prev_count; } ;
struct perf_event {int /*<<< orphan*/  count; TYPE_1__ hw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct perf_event *event)
{
	u64 counter_prev, counter_new, final_count;

	counter_prev = FUNC2(&event->hw.prev_count);
	counter_new = FUNC0(event);
	final_count = counter_new - counter_prev;

	/* Update the delta to the event count */
	FUNC1(final_count, &event->count);
}