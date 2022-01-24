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
 scalar_t__ THREAD_EVENT_MAX_START_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(tsd_t *tsd, uint64_t wait) {
	FUNC0(wait <= THREAD_EVENT_MAX_START_WAIT);
	uint64_t next_event = FUNC1(tsd) + (wait <=
	    THREAD_EVENT_MAX_INTERVAL ? wait : THREAD_EVENT_MAX_INTERVAL);
	FUNC3(tsd, next_event);
	uint64_t next_event_fast = (next_event <=
	    THREAD_ALLOCATED_NEXT_EVENT_FAST_MAX) ? next_event : 0U;
	FUNC2(tsd, next_event_fast);
}