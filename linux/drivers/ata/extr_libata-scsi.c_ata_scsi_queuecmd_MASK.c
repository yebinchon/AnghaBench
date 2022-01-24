#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct scsi_device {int dummy; } ;
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;struct scsi_device* device; } ;
struct ata_port {int /*<<< orphan*/  lock; } ;
struct ata_device {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int DID_BAD_TARGET ; 
 int FUNC0 (struct scsi_cmnd*,struct ata_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*,struct scsi_cmnd*) ; 
 struct ata_device* FUNC2 (struct ata_port*,struct scsi_device*) ; 
 struct ata_port* FUNC3 (struct Scsi_Host*) ; 
 scalar_t__ FUNC4 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*) ; 

int FUNC8(struct Scsi_Host *shost, struct scsi_cmnd *cmd)
{
	struct ata_port *ap;
	struct ata_device *dev;
	struct scsi_device *scsidev = cmd->device;
	int rc = 0;
	unsigned long irq_flags;

	ap = FUNC3(shost);

	FUNC5(ap->lock, irq_flags);

	FUNC1(ap, cmd);

	dev = FUNC2(ap, scsidev);
	if (FUNC4(dev))
		rc = FUNC0(cmd, dev);
	else {
		cmd->result = (DID_BAD_TARGET << 16);
		cmd->scsi_done(cmd);
	}

	FUNC6(ap->lock, irq_flags);

	return rc;
}