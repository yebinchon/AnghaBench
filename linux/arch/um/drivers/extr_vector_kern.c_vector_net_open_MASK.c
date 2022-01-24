#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vector_private {int opened; int options; int /*<<< orphan*/  tl; int /*<<< orphan*/  unit; TYPE_2__* fds; int /*<<< orphan*/  bpf; void* tx_irq; void* rx_irq; int /*<<< orphan*/ * header_txbuffer; int /*<<< orphan*/  header_size; int /*<<< orphan*/  parsed; void* tx_queue; int /*<<< orphan*/ * header_rxbuffer; int /*<<< orphan*/  rx_header_size; TYPE_1__* rx_queue; int /*<<< orphan*/  lock; } ;
struct vector_device {int opened; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  name; void* irq; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_fd; int /*<<< orphan*/  tx_fd; } ;
struct TYPE_3__ {int /*<<< orphan*/  queue_depth; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENETUNREACH ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  IRQ_READ ; 
 int /*<<< orphan*/  IRQ_WRITE ; 
 int /*<<< orphan*/  MAX_IOV_SIZE ; 
 void* VECTOR_BASE_IRQ ; 
 int VECTOR_BPF ; 
 int VECTOR_IRQ_SPACE ; 
 int VECTOR_QDISC_BYPASS ; 
 int VECTOR_RX ; 
 int VECTOR_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct vector_private*) ; 
 void* FUNC2 (struct vector_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vector_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int irq_rr ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int) ; 
 struct vector_private* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC11 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct vector_private*) ; 
 int /*<<< orphan*/  FUNC17 (struct vector_private*) ; 
 int /*<<< orphan*/  vector_rx_interrupt ; 
 int /*<<< orphan*/  vector_tx_interrupt ; 

__attribute__((used)) static int FUNC18(struct net_device *dev)
{
	struct vector_private *vp = FUNC7(dev);
	unsigned long flags;
	int err = -EINVAL;
	struct vector_device *vdevice;

	FUNC9(&vp->lock, flags);
	if (vp->opened) {
		FUNC10(&vp->lock, flags);
		return -ENXIO;
	}
	vp->opened = true;
	FUNC10(&vp->lock, flags);

	vp->fds = FUNC14(vp->unit, vp->parsed);

	if (vp->fds == NULL)
		goto out_close;

	if (FUNC1(vp) < 0)
		goto out_close;

	if ((vp->options & VECTOR_RX) > 0) {
		vp->rx_queue = FUNC2(
			vp,
			FUNC4(vp->parsed),
			vp->rx_header_size,
			MAX_IOV_SIZE
		);
		vp->rx_queue->queue_depth = FUNC4(vp->parsed);
	} else {
		vp->header_rxbuffer = FUNC5(
			vp->rx_header_size,
			GFP_KERNEL
		);
		if (vp->header_rxbuffer == NULL)
			goto out_close;
	}
	if ((vp->options & VECTOR_TX) > 0) {
		vp->tx_queue = FUNC2(
			vp,
			FUNC4(vp->parsed),
			vp->header_size,
			MAX_IOV_SIZE
		);
	} else {
		vp->header_txbuffer = FUNC5(vp->header_size, GFP_KERNEL);
		if (vp->header_txbuffer == NULL)
			goto out_close;
	}

	/* READ IRQ */
	err = FUNC11(
		irq_rr + VECTOR_BASE_IRQ, vp->fds->rx_fd,
			IRQ_READ, vector_rx_interrupt,
			IRQF_SHARED, dev->name, dev);
	if (err != 0) {
		FUNC6(dev, "vector_open: failed to get rx irq(%d)\n", err);
		err = -ENETUNREACH;
		goto out_close;
	}
	vp->rx_irq = irq_rr + VECTOR_BASE_IRQ;
	dev->irq = irq_rr + VECTOR_BASE_IRQ;
	irq_rr = (irq_rr + 1) % VECTOR_IRQ_SPACE;

	/* WRITE IRQ - we need it only if we have vector TX */
	if ((vp->options & VECTOR_TX) > 0) {
		err = FUNC11(
			irq_rr + VECTOR_BASE_IRQ, vp->fds->tx_fd,
				IRQ_WRITE, vector_tx_interrupt,
				IRQF_SHARED, dev->name, dev);
		if (err != 0) {
			FUNC6(dev,
				"vector_open: failed to get tx irq(%d)\n", err);
			err = -ENETUNREACH;
			goto out_close;
		}
		vp->tx_irq = irq_rr + VECTOR_BASE_IRQ;
		irq_rr = (irq_rr + 1) % VECTOR_IRQ_SPACE;
	}

	if ((vp->options & VECTOR_QDISC_BYPASS) != 0) {
		if (!FUNC12(vp->fds->rx_fd))
			vp->options |= VECTOR_BPF;
	}
	if ((vp->options & VECTOR_BPF) != 0)
		vp->bpf = FUNC13(vp->fds->rx_fd, dev->dev_addr);

	FUNC8(dev);

	/* clear buffer - it can happen that the host side of the interface
	 * is full when we get here. In this case, new data is never queued,
	 * SIGIOs never arrive, and the net never works.
	 */

	FUNC17(vp);

	FUNC16(vp);
	vdevice = FUNC3(vp->unit);
	vdevice->opened = 1;

	if ((vp->options & VECTOR_TX) != 0)
		FUNC0(&vp->tl);
	return 0;
out_close:
	FUNC15(dev);
	return err;
}