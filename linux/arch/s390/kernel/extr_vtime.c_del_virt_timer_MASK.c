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
struct vtimer_list {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  virt_timer_lock ; 
 int /*<<< orphan*/  FUNC3 (struct vtimer_list*) ; 

int FUNC4(struct vtimer_list *timer)
{
	unsigned long flags;

	if (!FUNC3(timer))
		return 0;
	FUNC1(&virt_timer_lock, flags);
	FUNC0(&timer->entry);
	FUNC2(&virt_timer_lock, flags);
	return 1;
}