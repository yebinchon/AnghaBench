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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  tsd_t ;

/* Variables and functions */
 scalar_t__ THREAD_ALLOCATED_NEXT_EVENT_FAST_MAX ; 
 scalar_t__ THREAD_EVENT_MAX_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread_event_active ; 

void
FUNC6(tsd_t *tsd) {
	uint64_t thread_allocated = FUNC1(tsd);
	uint64_t last_event = FUNC2(tsd);
	uint64_t next_event = FUNC5(tsd);
	uint64_t next_event_fast = FUNC4(tsd);

	FUNC0(last_event != next_event);
	if (next_event <= THREAD_ALLOCATED_NEXT_EVENT_FAST_MAX) {
		FUNC0(next_event_fast == next_event);
	} else {
		FUNC0(next_event_fast == 0U);
	}

	/* The subtraction is intentionally susceptible to underflow. */
	uint64_t interval = next_event - last_event;

	/* The subtraction is intentionally susceptible to underflow. */
	FUNC0(thread_allocated - last_event < interval);

	uint64_t min_wait = FUNC3(tsd);

	/*
	 * next_event should have been pushed up only except when no event is
	 * on and the TSD is just initialized.  The last_event == 0U guard
	 * below is stronger than needed, but having an exactly accurate guard
	 * is more complicated to implement.
	 */
	FUNC0((!thread_event_active && last_event == 0U) ||
	    interval == min_wait ||
	    (interval < min_wait && interval == THREAD_EVENT_MAX_INTERVAL));
}