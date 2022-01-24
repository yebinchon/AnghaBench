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
struct scsi_device {struct request_queue* request_queue; int /*<<< orphan*/  host; } ;
struct request_queue {scalar_t__ dma_drain_size; int /*<<< orphan*/ * dma_drain_buffer; } ;
struct ata_port {int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct ata_device {int /*<<< orphan*/  flags; int /*<<< orphan*/ * sdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  error_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_DFLAG_DETACH ; 
 struct ata_device* FUNC0 (struct ata_port*,struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 
 struct ata_port* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC6(struct scsi_device *sdev)
{
	struct ata_port *ap = FUNC2(sdev->host);
	struct request_queue *q = sdev->request_queue;
	unsigned long flags;
	struct ata_device *dev;

	if (!ap->ops->error_handler)
		return;

	FUNC4(ap->lock, flags);
	dev = FUNC0(ap, sdev);
	if (dev && dev->sdev) {
		/* SCSI device already in CANCEL state, no need to offline it */
		dev->sdev = NULL;
		dev->flags |= ATA_DFLAG_DETACH;
		FUNC1(ap);
	}
	FUNC5(ap->lock, flags);

	FUNC3(q->dma_drain_buffer);
	q->dma_drain_buffer = NULL;
	q->dma_drain_size = 0;
}