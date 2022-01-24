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
typedef  scalar_t__ u64 ;
struct vtimer_list {scalar_t__ expires; scalar_t__ interval; int /*<<< orphan*/  entry; int /*<<< orphan*/  function; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vtimer_list*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  virt_timer_lock ; 
 int FUNC5 (struct vtimer_list*) ; 

__attribute__((used)) static int FUNC6(struct vtimer_list *timer, u64 expires, int periodic)
{
	unsigned long flags;
	int rc;

	FUNC0(!timer->function);

	if (timer->expires == expires && FUNC5(timer))
		return 1;
	FUNC3(&virt_timer_lock, flags);
	rc = FUNC5(timer);
	if (rc)
		FUNC2(&timer->entry);
	timer->interval = periodic ? expires : 0;
	timer->expires = expires;
	FUNC1(timer);
	FUNC4(&virt_timer_lock, flags);
	return rc;
}