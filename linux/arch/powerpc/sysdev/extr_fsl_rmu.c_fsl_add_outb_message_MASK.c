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
struct rio_tx_desc {int dport; int dattr; size_t dwcnt; int saddr; } ;
struct rio_mport {int index; } ;
struct rio_dev {int destid; } ;
struct TYPE_4__ {int tx_slot; int* phys_buffer; size_t size; scalar_t__* virt_buffer; scalar_t__ virt; } ;
struct fsl_rmu {TYPE_2__ msg_tx_ring; TYPE_1__* msg_regs; } ;
struct TYPE_3__ {int /*<<< orphan*/  omr; } ;

/* Variables and functions */
 int EINVAL ; 
 struct fsl_rmu* FUNC0 (struct rio_mport*) ; 
 size_t RIO_MAX_MSG_SIZE ; 
 int RIO_MSG_OMR_MUI ; 
 int FUNC1 (size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,void*,size_t) ; 

int
FUNC8(struct rio_mport *mport, struct rio_dev *rdev, int mbox,
			void *buffer, size_t len)
{
	struct fsl_rmu *rmu = FUNC0(mport);
	u32 omr;
	struct rio_tx_desc *desc = (struct rio_tx_desc *)rmu->msg_tx_ring.virt
					+ rmu->msg_tx_ring.tx_slot;
	int ret = 0;

	FUNC7("RIO: fsl_add_outb_message(): destid %4.4x mbox %d buffer " \
		 "%p len %8.8zx\n", rdev->destid, mbox, buffer, len);
	if ((len < 8) || (len > RIO_MAX_MSG_SIZE)) {
		ret = -EINVAL;
		goto out;
	}

	/* Copy and clear rest of buffer */
	FUNC4(rmu->msg_tx_ring.virt_buffer[rmu->msg_tx_ring.tx_slot], buffer,
			len);
	if (len < (RIO_MAX_MSG_SIZE - 4))
		FUNC5(rmu->msg_tx_ring.virt_buffer[rmu->msg_tx_ring.tx_slot]
				+ len, 0, RIO_MAX_MSG_SIZE - len);

	/* Set mbox field for message, and set destid */
	desc->dport = (rdev->destid << 16) | (mbox & 0x3);

	/* Enable EOMI interrupt and priority */
	desc->dattr = 0x28000000 | ((mport->index) << 20);

	/* Set transfer size aligned to next power of 2 (in double words) */
	desc->dwcnt = FUNC3(len) ? len : 1 << FUNC1(len);

	/* Set snooping and source buffer address */
	desc->saddr = 0x00000004
		| rmu->msg_tx_ring.phys_buffer[rmu->msg_tx_ring.tx_slot];

	/* Increment enqueue pointer */
	omr = FUNC2(&rmu->msg_regs->omr);
	FUNC6(&rmu->msg_regs->omr, omr | RIO_MSG_OMR_MUI);

	/* Go to next descriptor */
	if (++rmu->msg_tx_ring.tx_slot == rmu->msg_tx_ring.size)
		rmu->msg_tx_ring.tx_slot = 0;

out:
	return ret;
}