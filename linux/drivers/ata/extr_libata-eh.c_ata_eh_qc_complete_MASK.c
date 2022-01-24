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
struct scsi_cmnd {int /*<<< orphan*/  allowed; int /*<<< orphan*/  retries; } ;
struct ata_queued_cmd {struct scsi_cmnd* scsicmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_queued_cmd*) ; 

void FUNC1(struct ata_queued_cmd *qc)
{
	struct scsi_cmnd *scmd = qc->scsicmd;
	scmd->retries = scmd->allowed;
	FUNC0(qc);
}