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
struct wakeup_source {scalar_t__ relax_count; scalar_t__ active_count; int active; void* max_time; int /*<<< orphan*/  name; scalar_t__ autosleep_enabled; scalar_t__ timer_expires; int /*<<< orphan*/  timer; void* last_time; int /*<<< orphan*/  total_time; } ;
typedef  void* ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_IN_PROGRESS ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  combined_event_count ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC3 () ; 
 void* FUNC4 (void*,void*) ; 
 scalar_t__ FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct wakeup_source*,void*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wakeup_count_wait_queue ; 

__attribute__((used)) static void FUNC11(struct wakeup_source *ws)
{
	unsigned int cnt, inpr, cec;
	ktime_t duration;
	ktime_t now;

	ws->relax_count++;
	/*
	 * __pm_relax() may be called directly or from a timer function.
	 * If it is called directly right after the timer function has been
	 * started, but before the timer function calls __pm_relax(), it is
	 * possible that __pm_stay_awake() will be called in the meantime and
	 * will set ws->active.  Then, ws->active may be cleared immediately
	 * by the __pm_relax() called from the timer function, but in such a
	 * case ws->relax_count will be different from ws->active_count.
	 */
	if (ws->relax_count != ws->active_count) {
		ws->relax_count--;
		return;
	}

	ws->active = false;

	now = FUNC3();
	duration = FUNC4(now, ws->last_time);
	ws->total_time = FUNC2(ws->total_time, duration);
	if (FUNC5(duration) > FUNC5(ws->max_time))
		ws->max_time = duration;

	ws->last_time = now;
	FUNC1(&ws->timer);
	ws->timer_expires = 0;

	if (ws->autosleep_enabled)
		FUNC8(ws, now);

	/*
	 * Increment the counter of registered wakeup events and decrement the
	 * couter of wakeup events in progress simultaneously.
	 */
	cec = FUNC0(MAX_IN_PROGRESS, &combined_event_count);
	FUNC7(ws->name, cec);

	FUNC6(&cnt, &inpr);
	if (!inpr && FUNC9(&wakeup_count_wait_queue))
		FUNC10(&wakeup_count_wait_queue);
}