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
struct scsi_cmnd {int dummy; } ;
struct ata_queued_cmd {int /*<<< orphan*/  tag; int /*<<< orphan*/  scsidone; struct scsi_cmnd* scsicmd; struct ata_port* ap; } ;
struct ata_port {int /*<<< orphan*/  eh_done_q; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  ata_eh_scsidone ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct ata_queued_cmd *qc)
{
	struct ata_port *ap = qc->ap;
	struct scsi_cmnd *scmd = qc->scsicmd;
	unsigned long flags;

	FUNC4(ap->lock, flags);
	qc->scsidone = ata_eh_scsidone;
	FUNC1(qc);
	FUNC0(FUNC2(qc->tag));
	FUNC5(ap->lock, flags);

	FUNC3(scmd, &ap->eh_done_q);
}