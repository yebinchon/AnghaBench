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
struct ata_port {int* sector_buf; } ;
struct ata_device {int flags; TYPE_1__* link; } ;
struct TYPE_2__ {struct ata_port* ap; } ;

/* Variables and functions */
 int ATA_DFLAG_NCQ_PRIO ; 
 int ATA_DFLAG_NCQ_PRIO_ENABLE ; 
 int /*<<< orphan*/  ATA_LOG_IDENTIFY_DEVICE ; 
 size_t ATA_LOG_NCQ_PRIO_OFFSET ; 
 int /*<<< orphan*/  ATA_LOG_SATA_SETTINGS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_device*,char*,...) ; 
 unsigned int FUNC2 (struct ata_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void FUNC3(struct ata_device *dev)
{
	struct ata_port *ap = dev->link->ap;
	unsigned int err_mask;

	if (!(dev->flags & ATA_DFLAG_NCQ_PRIO_ENABLE)) {
		dev->flags &= ~ATA_DFLAG_NCQ_PRIO;
		return;
	}

	err_mask = FUNC2(dev,
				     ATA_LOG_IDENTIFY_DEVICE,
				     ATA_LOG_SATA_SETTINGS,
				     ap->sector_buf,
				     1);
	if (err_mask) {
		FUNC1(dev,
			    "failed to get Identify Device data, Emask 0x%x\n",
			    err_mask);
		return;
	}

	if (ap->sector_buf[ATA_LOG_NCQ_PRIO_OFFSET] & FUNC0(3)) {
		dev->flags |= ATA_DFLAG_NCQ_PRIO;
	} else {
		dev->flags &= ~ATA_DFLAG_NCQ_PRIO;
		FUNC1(dev, "SATA page does not support priority\n");
	}

}