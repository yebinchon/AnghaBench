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
struct scsi_device {int queue_depth; TYPE_1__* host; } ;
struct ata_port {int /*<<< orphan*/  lock; } ;
struct ata_device {int /*<<< orphan*/  id; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  can_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_DFLAG_NCQ_OFF ; 
 int /*<<< orphan*/  ATA_MAX_QUEUE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_device*) ; 
 struct ata_device* FUNC3 (struct ata_port*,struct scsi_device*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct scsi_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 

int FUNC8(struct ata_port *ap, struct scsi_device *sdev,
			     int queue_depth)
{
	struct ata_device *dev;
	unsigned long flags;

	if (queue_depth < 1 || queue_depth == sdev->queue_depth)
		return sdev->queue_depth;

	dev = FUNC3(ap, sdev);
	if (!dev || !FUNC0(dev))
		return sdev->queue_depth;

	/* NCQ enabled? */
	FUNC6(ap->lock, flags);
	dev->flags &= ~ATA_DFLAG_NCQ_OFF;
	if (queue_depth == 1 || !FUNC2(dev)) {
		dev->flags |= ATA_DFLAG_NCQ_OFF;
		queue_depth = 1;
	}
	FUNC7(ap->lock, flags);

	/* limit and apply queue depth */
	queue_depth = FUNC4(queue_depth, sdev->host->can_queue);
	queue_depth = FUNC4(queue_depth, FUNC1(dev->id));
	queue_depth = FUNC4(queue_depth, ATA_MAX_QUEUE);

	if (sdev->queue_depth == queue_depth)
		return -EINVAL;

	return FUNC5(sdev, queue_depth);
}