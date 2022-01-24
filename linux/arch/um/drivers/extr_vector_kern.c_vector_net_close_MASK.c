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
struct vector_private {scalar_t__ rx_irq; scalar_t__ tx_irq; int opened; int in_error; int /*<<< orphan*/  lock; TYPE_1__* fds; int /*<<< orphan*/ * tx_queue; int /*<<< orphan*/ * rx_queue; TYPE_1__* header_txbuffer; TYPE_1__* header_rxbuffer; TYPE_1__* transport_data; TYPE_1__* bpf; int /*<<< orphan*/  tx_poll; int /*<<< orphan*/  tl; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int rx_fd; int tx_fd; struct TYPE_2__* remote_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct vector_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct vector_private *vp = FUNC3(dev);
	unsigned long flags;

	FUNC4(dev);
	FUNC0(&vp->tl);

	if (vp->fds == NULL)
		return 0;

	/* Disable and free all IRQS */
	if (vp->rx_irq > 0) {
		FUNC9(vp->rx_irq, dev);
		vp->rx_irq = 0;
	}
	if (vp->tx_irq > 0) {
		FUNC9(vp->tx_irq, dev);
		vp->tx_irq = 0;
	}
	FUNC8(&vp->tx_poll);
	if (vp->fds->rx_fd > 0) {
		FUNC5(vp->fds->rx_fd);
		vp->fds->rx_fd = -1;
	}
	if (vp->fds->tx_fd > 0) {
		FUNC5(vp->fds->tx_fd);
		vp->fds->tx_fd = -1;
	}
	FUNC2(vp->bpf);
	FUNC2(vp->fds->remote_addr);
	FUNC2(vp->transport_data);
	FUNC2(vp->header_rxbuffer);
	FUNC2(vp->header_txbuffer);
	if (vp->rx_queue != NULL)
		FUNC1(vp->rx_queue);
	if (vp->tx_queue != NULL)
		FUNC1(vp->tx_queue);
	FUNC2(vp->fds);
	vp->fds = NULL;
	FUNC6(&vp->lock, flags);
	vp->opened = false;
	vp->in_error = false;
	FUNC7(&vp->lock, flags);
	return 0;
}