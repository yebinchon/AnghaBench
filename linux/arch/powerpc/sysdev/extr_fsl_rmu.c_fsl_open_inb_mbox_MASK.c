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
typedef  int u32 ;
struct rio_priv {int /*<<< orphan*/  dev; } ;
struct rio_mport {struct rio_priv* priv; } ;
struct TYPE_3__ {int size; scalar_t__ phys; int /*<<< orphan*/  virt; int /*<<< orphan*/ ** virt_buffer; scalar_t__ rx_slot; void* dev_id; } ;
struct fsl_rmu {TYPE_2__* msg_regs; TYPE_1__ msg_rx_ring; } ;
struct TYPE_4__ {int /*<<< orphan*/  imr; int /*<<< orphan*/  isr; int /*<<< orphan*/  ifqepar; int /*<<< orphan*/  ifqdpar; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct fsl_rmu* FUNC0 (struct rio_mport*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct rio_mport*) ; 
 int RIO_MAX_MSG_SIZE ; 
 int RIO_MAX_RX_RING_SIZE ; 
 int RIO_MIN_RX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  fsl_rio_rx_handler ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

int
FUNC9(struct rio_mport *mport, void *dev_id, int mbox, int entries)
{
	int i, rc = 0;
	struct rio_priv *priv = mport->priv;
	struct fsl_rmu *rmu = FUNC0(mport);

	if ((entries < RIO_MIN_RX_RING_SIZE) ||
		(entries > RIO_MAX_RX_RING_SIZE) || (!FUNC5(entries))) {
		rc = -EINVAL;
		goto out;
	}

	/* Initialize client buffer ring */
	rmu->msg_rx_ring.dev_id = dev_id;
	rmu->msg_rx_ring.size = entries;
	rmu->msg_rx_ring.rx_slot = 0;
	for (i = 0; i < rmu->msg_rx_ring.size; i++)
		rmu->msg_rx_ring.virt_buffer[i] = NULL;

	/* Initialize inbound message ring */
	rmu->msg_rx_ring.virt = FUNC2(priv->dev,
				rmu->msg_rx_ring.size * RIO_MAX_MSG_SIZE,
				&rmu->msg_rx_ring.phys, GFP_KERNEL);
	if (!rmu->msg_rx_ring.virt) {
		rc = -ENOMEM;
		goto out;
	}

	/* Point dequeue/enqueue pointers at first entry in ring */
	FUNC6(&rmu->msg_regs->ifqdpar, (u32) rmu->msg_rx_ring.phys);
	FUNC6(&rmu->msg_regs->ifqepar, (u32) rmu->msg_rx_ring.phys);

	/* Clear interrupt status */
	FUNC6(&rmu->msg_regs->isr, 0x00000091);

	/* Hook up inbound message handler */
	rc = FUNC7(FUNC1(mport), fsl_rio_rx_handler, 0,
			 "msg_rx", (void *)mport);
	if (rc < 0) {
		FUNC3(priv->dev,
			rmu->msg_rx_ring.size * RIO_MAX_MSG_SIZE,
			rmu->msg_rx_ring.virt, rmu->msg_rx_ring.phys);
		goto out;
	}

	/*
	 * Configure inbound message unit:
	 *      Snooping
	 *      4KB max message size
	 *      Unmask all interrupt sources
	 *      Disable
	 */
	FUNC6(&rmu->msg_regs->imr, 0x001b0060);

	/* Set number of queue entries */
	FUNC8(&rmu->msg_regs->imr, (FUNC4(entries) - 2) << 12);

	/* Now enable the unit */
	FUNC8(&rmu->msg_regs->imr, 0x1);

out:
	return rc;
}