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
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* open ) (struct iss_net_private*) ;} ;
struct iss_net_private {int /*<<< orphan*/  lock; scalar_t__ timer_val; int /*<<< orphan*/  timer; int /*<<< orphan*/  opened_list; TYPE_1__ tp; } ;

/* Variables and functions */
 scalar_t__ ISS_NET_TIMER_VALUE ; 
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  iss_net_timer ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct iss_net_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  opened ; 
 int /*<<< orphan*/  opened_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct iss_net_private*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct iss_net_private *lp = FUNC3(dev);
	int err;

	FUNC5(&lp->lock);

	err = lp->tp.open(lp);
	if (err < 0)
		goto out;

	FUNC4(dev);

	/* clear buffer - it can happen that the host side of the interface
	 * is full when we get here. In this case, new data is never queued,
	 * SIGIOs never arrive, and the net never works.
	 */
	while ((err = FUNC0(dev)) > 0)
		;

	FUNC6(&lp->lock);
	FUNC5(&opened_lock);
	FUNC1(&lp->opened_list, &opened);
	FUNC6(&opened_lock);
	FUNC5(&lp->lock);

	FUNC8(&lp->timer, iss_net_timer, 0);
	lp->timer_val = ISS_NET_TIMER_VALUE;
	FUNC2(&lp->timer, jiffies + lp->timer_val);

out:
	FUNC6(&lp->lock);
	return err;
}