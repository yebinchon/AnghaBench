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
struct scsi_device {int /*<<< orphan*/  host; } ;
struct ata_port {int /*<<< orphan*/  lock; } ;
struct ata_device {scalar_t__ n_sectors; scalar_t__ n_native_sectors; TYPE_2__* link; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  action; } ;
struct TYPE_4__ {TYPE_1__ eh_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_DFLAG_UNLOCK_HPA ; 
 int /*<<< orphan*/  ATA_EH_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*) ; 
 struct ata_device* FUNC2 (struct ata_port*,struct scsi_device*) ; 
 struct ata_port* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC6(struct scsi_device *sdev)
{
	struct ata_port *ap = FUNC3(sdev->host);
	struct ata_device *dev;
	unsigned long flags;

	FUNC4(ap->lock, flags);

	dev = FUNC2(ap, sdev);
	if (dev && dev->n_sectors < dev->n_native_sectors) {
		dev->flags |= ATA_DFLAG_UNLOCK_HPA;
		dev->link->eh_info.action |= ATA_EH_RESET;
		FUNC0(ap);
	}

	FUNC5(ap->lock, flags);
	FUNC1(ap);
}