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
struct wakeup_source {int active; int /*<<< orphan*/  name; int /*<<< orphan*/  last_time; int /*<<< orphan*/  start_prevent_time; scalar_t__ autosleep_enabled; int /*<<< orphan*/  active_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  combined_event_count ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct wakeup_source*) ; 

__attribute__((used)) static void FUNC5(struct wakeup_source *ws)
{
	unsigned int cec;

	if (FUNC0(FUNC4(ws),
			"unregistered wakeup source\n"))
		return;

	ws->active = true;
	ws->active_count++;
	ws->last_time = FUNC2();
	if (ws->autosleep_enabled)
		ws->start_prevent_time = ws->last_time;

	/* Increment the counter of events in progress. */
	cec = FUNC1(&combined_event_count);

	FUNC3(ws->name, cec);
}