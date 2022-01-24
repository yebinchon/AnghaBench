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
struct timer_list {int dummy; } ;
struct iss_net_private {int /*<<< orphan*/  lock; scalar_t__ timer_val; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 struct iss_net_private* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ jiffies ; 
 struct iss_net_private* lp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct iss_net_private *lp = FUNC0(lp, t, timer);

	FUNC1();
	FUNC3(&lp->lock);
	FUNC2(&lp->timer, jiffies + lp->timer_val);
	FUNC4(&lp->lock);
}