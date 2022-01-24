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
struct wakeup_source {int /*<<< orphan*/  lock; int /*<<< orphan*/  expire_count; scalar_t__ timer_expires; scalar_t__ active; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 struct wakeup_source* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC4 (struct wakeup_source*) ; 
 struct wakeup_source* ws ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct wakeup_source *ws = FUNC0(ws, t, timer);
	unsigned long flags;

	FUNC1(&ws->lock, flags);

	if (ws->active && ws->timer_expires
	    && FUNC3(jiffies, ws->timer_expires)) {
		FUNC4(ws);
		ws->expire_count++;
	}

	FUNC2(&ws->lock, flags);
}