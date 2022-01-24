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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct scsi_cmnd {int /*<<< orphan*/ * cmnd; } ;
struct ata_queued_cmd {struct scsi_cmnd* scsicmd; } ;

/* Variables and functions */
 scalar_t__ const ATA_32 ; 
 unsigned int FUNC0 (struct ata_queued_cmd*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static unsigned int FUNC2(struct ata_queued_cmd *qc)
{
	struct scsi_cmnd *scmd = qc->scsicmd;
	const u8 *cdb = scmd->cmnd;
	const u16 sa = FUNC1(&cdb[8]);

	/*
	 * if service action represents a ata pass-thru(32) command,
	 * then pass it to ata_scsi_pass_thru handler.
	 */
	if (sa == ATA_32)
		return FUNC0(qc);

	/* unsupported service action */
	return 1;
}