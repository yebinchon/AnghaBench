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
typedef  int u8 ;
typedef  scalar_t__ u64 ;
struct scsi_cmnd {unsigned char* sense_buffer; int result; } ;
struct ata_taskfile {int command; int /*<<< orphan*/  feature; } ;
struct ata_queued_cmd {struct ata_taskfile result_tf; int /*<<< orphan*/  err_mask; TYPE_2__* ap; struct scsi_cmnd* scsicmd; struct ata_device* dev; } ;
struct ata_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  print_id; TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/ * error_handler; } ;

/* Variables and functions */
 int ABORTED_COMMAND ; 
 int ATA_BUSY ; 
 int ATA_DF ; 
 int ATA_DRQ ; 
 int ATA_ERR ; 
 int DRIVER_SENSE ; 
 int NOT_READY ; 
 int SAM_STAT_CHECK_CONDITION ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 scalar_t__ U64_MAX ; 
 scalar_t__ FUNC0 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_device*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_device*,struct scsi_cmnd*,int,int,int) ; 
 scalar_t__ FUNC3 (struct ata_taskfile*,struct ata_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct ata_queued_cmd *qc)
{
	struct ata_device *dev = qc->dev;
	struct scsi_cmnd *cmd = qc->scsicmd;
	struct ata_taskfile *tf = &qc->result_tf;
	unsigned char *sb = cmd->sense_buffer;
	int verbose = qc->ap->ops->error_handler == NULL;
	u64 block;
	u8 sense_key, asc, ascq;

	FUNC5(sb, 0, SCSI_SENSE_BUFFERSIZE);

	cmd->result = (DRIVER_SENSE << 24) | SAM_STAT_CHECK_CONDITION;

	if (FUNC0(dev)) {
		/* Device disabled after error recovery */
		/* LOGICAL UNIT NOT READY, HARD RESET REQUIRED */
		FUNC2(dev, cmd, NOT_READY, 0x04, 0x21);
		return;
	}
	/* Use ata_to_sense_error() to map status register bits
	 * onto sense key, asc & ascq.
	 */
	if (qc->err_mask ||
	    tf->command & (ATA_BUSY | ATA_DF | ATA_ERR | ATA_DRQ)) {
		FUNC4(qc->ap->print_id, tf->command, tf->feature,
				   &sense_key, &asc, &ascq, verbose);
		FUNC2(dev, cmd, sense_key, asc, ascq);
	} else {
		/* Could not decode error */
		FUNC1(dev, "could not decode error status 0x%x err_mask 0x%x\n",
			     tf->command, qc->err_mask);
		FUNC2(dev, cmd, ABORTED_COMMAND, 0, 0);
		return;
	}

	block = FUNC3(&qc->result_tf, dev);
	if (block == U64_MAX)
		return;

	FUNC6(sb, SCSI_SENSE_BUFFERSIZE, block);
}