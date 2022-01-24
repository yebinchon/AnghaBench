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
struct wakeup_source {unsigned long timer_expires; int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct wakeup_source*) ; 
 int /*<<< orphan*/  FUNC6 (struct wakeup_source*,int) ; 

void FUNC7(struct wakeup_source *ws, unsigned int msec, bool hard)
{
	unsigned long flags;
	unsigned long expires;

	if (!ws)
		return;

	FUNC2(&ws->lock, flags);

	FUNC6(ws, hard);

	if (!msec) {
		FUNC5(ws);
		goto unlock;
	}

	expires = jiffies + FUNC1(msec);
	if (!expires)
		expires = 1;

	if (!ws->timer_expires || FUNC4(expires, ws->timer_expires)) {
		FUNC0(&ws->timer, expires);
		ws->timer_expires = expires;
	}

 unlock:
	FUNC3(&ws->lock, flags);
}