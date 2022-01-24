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
struct vtimer_list {scalar_t__ expires; int /*<<< orphan*/  entry; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vtimer_list*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  virt_timer_current ; 
 int /*<<< orphan*/  virt_timer_elapsed ; 
 int /*<<< orphan*/  virt_timer_list ; 

__attribute__((used)) static void FUNC6(struct vtimer_list *timer)
{
	if (FUNC5(&virt_timer_list)) {
		/* First timer, just program it. */
		FUNC1(&virt_timer_current, timer->expires);
		FUNC1(&virt_timer_elapsed, 0);
		FUNC3(&timer->entry, &virt_timer_list);
	} else {
		/* Update timer against current base. */
		timer->expires += FUNC0(&virt_timer_elapsed);
		if (FUNC2((s64) timer->expires <
			   (s64) FUNC0(&virt_timer_current)))
			/* The new timer expires before the current timer. */
			FUNC1(&virt_timer_current, timer->expires);
		/* Insert new timer into the list. */
		FUNC4(timer, &virt_timer_list);
	}
}