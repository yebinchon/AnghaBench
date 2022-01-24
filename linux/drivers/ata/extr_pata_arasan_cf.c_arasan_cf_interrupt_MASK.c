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
struct TYPE_4__ {int flags; } ;
struct ata_queued_cmd {TYPE_2__ tf; } ;
struct ata_host {struct arasan_cf_dev* private_data; } ;
struct arasan_cf_dev {int /*<<< orphan*/  cf_completion; struct ata_queued_cmd* qc; TYPE_1__* host; scalar_t__ vbase; int /*<<< orphan*/  dma_status; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_DMA_ERR ; 
 int ATA_TFLAG_WRITE ; 
 int BUF_AVAIL_IRQ ; 
 int CARD_DETECT_IRQ ; 
 int GIRQ_CF ; 
 scalar_t__ GIRQ_STS ; 
 int IGNORED_IRQS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ IRQ_STS ; 
 int PIO_XFER_ERR_IRQ ; 
 scalar_t__ XFER_CTR ; 
 int XFER_DONE_IRQ ; 
 int XFER_START ; 
 int /*<<< orphan*/  FUNC0 (struct arasan_cf_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev)
{
	struct arasan_cf_dev *acdev = ((struct ata_host *)dev)->private_data;
	unsigned long flags;
	u32 irqsts;

	irqsts = FUNC3(acdev->vbase + GIRQ_STS);
	if (!(irqsts & GIRQ_CF))
		return IRQ_NONE;

	FUNC4(&acdev->host->lock, flags);
	irqsts = FUNC3(acdev->vbase + IRQ_STS);
	FUNC6(irqsts, acdev->vbase + IRQ_STS);		/* clear irqs */
	FUNC6(GIRQ_CF, acdev->vbase + GIRQ_STS);	/* clear girqs */

	/* handle only relevant interrupts */
	irqsts &= ~IGNORED_IRQS;

	if (irqsts & CARD_DETECT_IRQ) {
		FUNC0(acdev, 1);
		FUNC5(&acdev->host->lock, flags);
		return IRQ_HANDLED;
	}

	if (irqsts & PIO_XFER_ERR_IRQ) {
		acdev->dma_status = ATA_DMA_ERR;
		FUNC6(FUNC3(acdev->vbase + XFER_CTR) & ~XFER_START,
				acdev->vbase + XFER_CTR);
		FUNC5(&acdev->host->lock, flags);
		FUNC1(&acdev->cf_completion);
		FUNC2(acdev->host->dev, "pio xfer err irq\n");
		return IRQ_HANDLED;
	}

	FUNC5(&acdev->host->lock, flags);

	if (irqsts & BUF_AVAIL_IRQ) {
		FUNC1(&acdev->cf_completion);
		return IRQ_HANDLED;
	}

	if (irqsts & XFER_DONE_IRQ) {
		struct ata_queued_cmd *qc = acdev->qc;

		/* Send Complete only for write */
		if (qc->tf.flags & ATA_TFLAG_WRITE)
			FUNC1(&acdev->cf_completion);
	}

	return IRQ_HANDLED;
}