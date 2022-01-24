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
struct TYPE_2__ {int /*<<< orphan*/  prev_count; int /*<<< orphan*/  event_base; } ;
struct perf_event {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*) ; 

int FUNC6(struct perf_event *event)
{
	FUNC5(event);
	/*
	 * For a checkpointed counter always reset back to 0.  This
	 * avoids a situation where the counter overflows, aborts the
	 * transaction and is then set back to shortly before the
	 * overflow, and overflows and aborts again.
	 */
	if (FUNC2(FUNC0(event))) {
		/* No race with NMIs because the counter should not be armed */
		FUNC3(event->hw.event_base, 0);
		FUNC1(&event->hw.prev_count, 0);
	}
	return FUNC4(event);
}