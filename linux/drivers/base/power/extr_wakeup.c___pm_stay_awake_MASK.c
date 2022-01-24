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
struct wakeup_source {int /*<<< orphan*/  lock; scalar_t__ timer_expires; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct wakeup_source*,int) ; 

void FUNC4(struct wakeup_source *ws)
{
	unsigned long flags;

	if (!ws)
		return;

	FUNC1(&ws->lock, flags);

	FUNC3(ws, false);
	FUNC0(&ws->timer);
	ws->timer_expires = 0;

	FUNC2(&ws->lock, flags);
}