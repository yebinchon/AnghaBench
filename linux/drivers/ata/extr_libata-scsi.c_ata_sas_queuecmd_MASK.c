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
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct ata_port {TYPE_1__ link; } ;

/* Variables and functions */
 int DID_BAD_TARGET ; 
 int FUNC0 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*,struct scsi_cmnd*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 

int FUNC5(struct scsi_cmnd *cmd, struct ata_port *ap)
{
	int rc = 0;

	FUNC2(ap, cmd);

	if (FUNC3(FUNC1(ap->link.device)))
		rc = FUNC0(cmd, ap->link.device);
	else {
		cmd->result = (DID_BAD_TARGET << 16);
		cmd->scsi_done(cmd);
	}
	return rc;
}