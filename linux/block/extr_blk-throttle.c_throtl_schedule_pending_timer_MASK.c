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
struct throtl_service_queue {int /*<<< orphan*/  pending_timer; } ;
struct TYPE_2__ {int throtl_slice; } ;

/* Variables and functions */
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* FUNC1 (struct throtl_service_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct throtl_service_queue*,char*,unsigned long,int) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct throtl_service_queue *sq,
					  unsigned long expires)
{
	unsigned long max_expire = jiffies + 8 * FUNC1(sq)->throtl_slice;

	/*
	 * Since we are adjusting the throttle limit dynamically, the sleep
	 * time calculated according to previous limit might be invalid. It's
	 * possible the cgroup sleep time is very long and no other cgroups
	 * have IO running so notify the limit changes. Make sure the cgroup
	 * doesn't sleep too long to avoid the missed notification.
	 */
	if (FUNC3(expires, max_expire))
		expires = max_expire;
	FUNC0(&sq->pending_timer, expires);
	FUNC2(sq, "schedule timer. delay=%lu jiffies=%lu",
		   expires - jiffies, jiffies);
}