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
struct TYPE_2__ {int /*<<< orphan*/ * function; } ;
struct wakeup_source {TYPE_1__ timer; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  events_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wakeup_srcu ; 

void FUNC6(struct wakeup_source *ws)
{
	unsigned long flags;

	if (FUNC0(!ws))
		return;

	FUNC3(&events_lock, flags);
	FUNC2(&ws->entry);
	FUNC4(&events_lock, flags);
	FUNC5(&wakeup_srcu);

	FUNC1(&ws->timer);
	/*
	 * Clear timer.function to make wakeup_source_not_registered() treat
	 * this wakeup source as not registered.
	 */
	ws->timer.function = NULL;
}