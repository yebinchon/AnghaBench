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
struct vector_private {int /*<<< orphan*/  tx_poll; scalar_t__ in_write_poll; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 struct vector_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct vector_private *vp = FUNC0(dev);

	if (!FUNC1(dev))
		return IRQ_NONE;
	/* We need to pay attention to it only if we got
	 * -EAGAIN or -ENOBUFFS from sendmmsg. Otherwise
	 * we ignore it. In the future, it may be worth
	 * it to improve the IRQ controller a bit to make
	 * tweaking the IRQ mask less costly
	 */

	if (vp->in_write_poll)
		FUNC2(&vp->tx_poll);
	return IRQ_HANDLED;

}