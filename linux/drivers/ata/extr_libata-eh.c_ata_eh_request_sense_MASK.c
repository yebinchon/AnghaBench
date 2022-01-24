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
struct scsi_cmnd {int dummy; } ;
struct ata_taskfile {int flags; int command; int /*<<< orphan*/  lbal; int /*<<< orphan*/  lbam; int /*<<< orphan*/  lbah; int /*<<< orphan*/  protocol; } ;
struct ata_queued_cmd {int flags; struct ata_device* dev; TYPE_1__* ap; } ;
struct ata_device {int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int pflags; } ;

/* Variables and functions */
 int ATA_CMD_REQ_SENSE_DATA ; 
 int ATA_PFLAG_FROZEN ; 
 int /*<<< orphan*/  ATA_PROT_NODATA ; 
 int ATA_QCFLAG_SENSE_VALID ; 
 int ATA_SENSE ; 
 int ATA_TFLAG_DEVICE ; 
 int ATA_TFLAG_ISADDR ; 
 int ATA_TFLAG_LBA ; 
 int ATA_TFLAG_LBA48 ; 
 int /*<<< orphan*/  DMA_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_device*,char*,...) ; 
 unsigned int FUNC2 (struct ata_device*,struct ata_taskfile*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_device*,struct scsi_cmnd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ata_device*,struct ata_taskfile*) ; 

__attribute__((used)) static void FUNC6(struct ata_queued_cmd *qc,
				 struct scsi_cmnd *cmd)
{
	struct ata_device *dev = qc->dev;
	struct ata_taskfile tf;
	unsigned int err_mask;

	if (qc->ap->pflags & ATA_PFLAG_FROZEN) {
		FUNC1(dev, "sense data available but port frozen\n");
		return;
	}

	if (!cmd || qc->flags & ATA_QCFLAG_SENSE_VALID)
		return;

	if (!FUNC3(dev->id)) {
		FUNC1(qc->dev, "sense data reporting disabled\n");
		return;
	}

	FUNC0("ATA request sense\n");

	FUNC5(dev, &tf);
	tf.flags |= ATA_TFLAG_ISADDR | ATA_TFLAG_DEVICE;
	tf.flags |= ATA_TFLAG_LBA | ATA_TFLAG_LBA48;
	tf.command = ATA_CMD_REQ_SENSE_DATA;
	tf.protocol = ATA_PROT_NODATA;

	err_mask = FUNC2(dev, &tf, NULL, DMA_NONE, NULL, 0, 0);
	/* Ignore err_mask; ATA_ERR might be set */
	if (tf.command & ATA_SENSE) {
		FUNC4(dev, cmd, tf.lbah, tf.lbam, tf.lbal);
		qc->flags |= ATA_QCFLAG_SENSE_VALID;
	} else {
		FUNC1(dev, "request sense failed stat %02x emask %x\n",
			     tf.command, err_mask);
	}
}