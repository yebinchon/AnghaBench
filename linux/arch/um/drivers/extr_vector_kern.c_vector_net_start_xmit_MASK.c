#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  tx_kicks; } ;
struct vector_private {scalar_t__ rx_irq; scalar_t__ tx_irq; int options; int /*<<< orphan*/  tx_poll; TYPE_3__* tx_queue; TYPE_2__ estats; int /*<<< orphan*/  coalesce; int /*<<< orphan*/  tl; int /*<<< orphan*/  dev; TYPE_1__* fds; scalar_t__ in_error; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {int max_depth; } ;
struct TYPE_5__ {scalar_t__ rx_fd; scalar_t__ tx_fd; } ;

/* Variables and functions */
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  TX_SMALL_PACKET ; 
 int VECTOR_TX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct vector_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_3__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (struct vector_private*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct net_device *dev)
{
	struct vector_private *vp = FUNC2(dev);
	int queue_depth = 0;

	if (vp->in_error) {
		FUNC0(vp->fds->rx_fd, vp->rx_irq);
		if ((vp->fds->rx_fd != vp->fds->tx_fd) && (vp->tx_irq != 0))
			FUNC0(vp->fds->tx_fd, vp->tx_irq);
		return NETDEV_TX_BUSY;
	}

	if ((vp->options & VECTOR_TX) == 0) {
		FUNC9(vp, skb);
		return NETDEV_TX_OK;
	}

	/* We do BQL only in the vector path, no point doing it in
	 * packet at a time mode as there is no device queue
	 */

	FUNC3(vp->dev, skb->len);
	queue_depth = FUNC7(vp->tx_queue, skb);

	/* if the device queue is full, stop the upper layers and
	 * flush it.
	 */

	if (queue_depth >= vp->tx_queue->max_depth - 1) {
		vp->estats.tx_kicks++;
		FUNC5(dev);
		FUNC8(vp->tx_queue);
		return NETDEV_TX_OK;
	}
	if (FUNC4()) {
		FUNC1(&vp->tl, vp->coalesce);
		return NETDEV_TX_OK;
	}
	if (skb->len < TX_SMALL_PACKET) {
		vp->estats.tx_kicks++;
		FUNC8(vp->tx_queue);
	} else
		FUNC6(&vp->tx_poll);
	return NETDEV_TX_OK;
}