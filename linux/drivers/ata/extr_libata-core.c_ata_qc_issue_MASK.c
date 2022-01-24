#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {int /*<<< orphan*/  protocol; } ;
struct ata_queued_cmd {int hw_tag; unsigned long long tag; int err_mask; TYPE_2__* dev; int /*<<< orphan*/  nbytes; int /*<<< orphan*/  n_elem; int /*<<< orphan*/  sg; int /*<<< orphan*/  flags; TYPE_1__ tf; struct ata_port* ap; } ;
struct ata_port {unsigned long long qc_active; int flags; TYPE_3__* ops; int /*<<< orphan*/  nr_active_links; } ;
struct TYPE_8__ {int /*<<< orphan*/  action; } ;
struct ata_link {unsigned long long active_tag; int sactive; TYPE_4__ eh_info; } ;
struct TYPE_7__ {int (* qc_issue ) (struct ata_queued_cmd*) ;int /*<<< orphan*/  (* qc_prep ) (struct ata_queued_cmd*) ;scalar_t__ error_handler; } ;
struct TYPE_6__ {int flags; struct ata_link* link; } ;

/* Variables and functions */
 int AC_ERR_SYSTEM ; 
 int ATA_DFLAG_SLEEPING ; 
 int /*<<< orphan*/  ATA_EH_RESET ; 
 int ATA_FLAG_PIO_DMA ; 
 int /*<<< orphan*/  ATA_QCFLAG_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ata_link*) ; 
 int /*<<< orphan*/  FUNC7 (struct ata_queued_cmd*) ; 
 scalar_t__ FUNC8 (struct ata_queued_cmd*) ; 
 scalar_t__ FUNC9 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC10 (struct ata_queued_cmd*) ; 
 int FUNC11 (struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC12 (struct ata_queued_cmd*) ; 
 scalar_t__ FUNC13 (int) ; 

void FUNC14(struct ata_queued_cmd *qc)
{
	struct ata_port *ap = qc->ap;
	struct ata_link *link = qc->dev->link;
	u8 prot = qc->tf.protocol;

	/* Make sure only one non-NCQ command is outstanding.  The
	 * check is skipped for old EH because it reuses active qc to
	 * request ATAPI sense.
	 */
	FUNC0(ap->ops->error_handler && FUNC9(link->active_tag));

	if (FUNC4(prot)) {
		FUNC0(link->sactive & (1 << qc->hw_tag));

		if (!link->sactive)
			ap->nr_active_links++;
		link->sactive |= 1 << qc->hw_tag;
	} else {
		FUNC0(link->sactive);

		ap->nr_active_links++;
		link->active_tag = qc->tag;
	}

	qc->flags |= ATA_QCFLAG_ACTIVE;
	ap->qc_active |= 1ULL << qc->tag;

	/*
	 * We guarantee to LLDs that they will have at least one
	 * non-zero sg if the command is a data command.
	 */
	if (FUNC2(prot) && (!qc->sg || !qc->n_elem || !qc->nbytes))
		goto sys_err;

	if (FUNC3(prot) || (FUNC5(prot) &&
				 (ap->flags & ATA_FLAG_PIO_DMA)))
		if (FUNC8(qc))
			goto sys_err;

	/* if device is sleeping, schedule reset and abort the link */
	if (FUNC13(qc->dev->flags & ATA_DFLAG_SLEEPING)) {
		link->eh_info.action |= ATA_EH_RESET;
		FUNC1(&link->eh_info, "waking up from sleep");
		FUNC6(link);
		return;
	}

	ap->ops->qc_prep(qc);
	FUNC12(qc);
	qc->err_mask |= ap->ops->qc_issue(qc);
	if (FUNC13(qc->err_mask))
		goto err;
	return;

sys_err:
	qc->err_mask |= AC_ERR_SYSTEM;
err:
	FUNC7(qc);
}