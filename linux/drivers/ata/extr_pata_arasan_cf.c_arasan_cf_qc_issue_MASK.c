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
struct TYPE_8__ {int protocol; int flags; } ;
struct ata_queued_cmd {TYPE_4__ tf; TYPE_2__* dev; struct ata_port* ap; } ;
struct ata_port {int /*<<< orphan*/  hsm_task_state; TYPE_3__* ops; TYPE_1__* host; } ;
struct arasan_cf_dev {struct ata_queued_cmd* qc; int /*<<< orphan*/  dma_status; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* sff_tf_load ) (struct ata_port*,TYPE_4__*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  devno; } ;
struct TYPE_5__ {struct arasan_cf_dev* private_data; } ;

/* Variables and functions */
 unsigned int AC_ERR_SYSTEM ; 
#define  ATA_PROT_DMA 128 
 int ATA_TFLAG_POLLING ; 
 int /*<<< orphan*/  HSM_ST_LAST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct arasan_cf_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_port*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct ata_port*,TYPE_4__*) ; 

__attribute__((used)) static unsigned int FUNC8(struct ata_queued_cmd *qc)
{
	struct ata_port *ap = qc->ap;
	struct arasan_cf_dev *acdev = ap->host->private_data;

	/* defer PIO handling to sff_qc_issue */
	if (!FUNC3(qc->tf.protocol))
		return FUNC5(qc);

	/* select the device */
	FUNC6(ap);
	FUNC4(ap, qc->dev->devno);
	FUNC6(ap);

	/* start the command */
	switch (qc->tf.protocol) {
	case ATA_PROT_DMA:
		FUNC1(qc->tf.flags & ATA_TFLAG_POLLING);

		ap->ops->sff_tf_load(ap, &qc->tf);
		acdev->dma_status = 0;
		acdev->qc = qc;
		FUNC2(acdev);
		ap->hsm_task_state = HSM_ST_LAST;
		break;

	default:
		FUNC0(1);
		return AC_ERR_SYSTEM;
	}

	return 0;
}