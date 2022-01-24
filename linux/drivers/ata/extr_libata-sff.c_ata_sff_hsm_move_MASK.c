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
struct TYPE_3__ {int flags; int /*<<< orphan*/  protocol; } ;
struct ata_queued_cmd {int flags; int err_mask; TYPE_2__* dev; TYPE_1__ tf; } ;
struct ata_port {int hsm_task_state; int /*<<< orphan*/  print_id; int /*<<< orphan*/  lock; } ;
struct ata_eh_info {int dummy; } ;
struct ata_link {struct ata_eh_info eh_info; } ;
struct TYPE_4__ {int horkage; int /*<<< orphan*/  devno; struct ata_link* link; } ;

/* Variables and functions */
 int AC_ERR_DEV ; 
 int AC_ERR_HSM ; 
 int AC_ERR_NODEV_HINT ; 
 int /*<<< orphan*/  ATAPI_PROT_PIO ; 
 int ATA_BUSY ; 
 int ATA_DF ; 
 int ATA_DRQ ; 
 int ATA_ERR ; 
 int ATA_HORKAGE_DIAGNOSTIC ; 
 int ATA_HORKAGE_STUCK_ERR ; 
 int /*<<< orphan*/  ATA_PROT_PIO ; 
 int ATA_QCFLAG_ACTIVE ; 
 int ATA_TFLAG_POLLING ; 
 int ATA_TFLAG_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
#define  HSM_ST 131 
#define  HSM_ST_ERR 130 
#define  HSM_ST_FIRST 129 
 void* HSM_ST_IDLE ; 
#define  HSM_ST_LAST 128 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_eh_info*,char*,...) ; 
 int FUNC5 (struct ata_port*,struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct ata_queued_cmd*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct ata_queued_cmd*) ; 
 int FUNC9 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC11 (struct ata_port*,struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

int FUNC15(struct ata_port *ap, struct ata_queued_cmd *qc,
		     u8 status, int in_wq)
{
	struct ata_link *link = qc->dev->link;
	struct ata_eh_info *ehi = &link->eh_info;
	int poll_next;

	FUNC13(ap->lock);

	FUNC2((qc->flags & ATA_QCFLAG_ACTIVE) == 0);

	/* Make sure ata_sff_qc_issue() does not throw things
	 * like DMA polling into the workqueue. Notice that
	 * in_wq is not equivalent to (qc->tf.flags & ATA_TFLAG_POLLING).
	 */
	FUNC2(in_wq != FUNC5(ap, qc));

fsm_start:
	FUNC0("ata%u: protocol %d task_state %d (dev_stat 0x%X)\n",
		ap->print_id, qc->tf.protocol, ap->hsm_task_state, status);

	switch (ap->hsm_task_state) {
	case HSM_ST_FIRST:
		/* Send first data block or PACKET CDB */

		/* If polling, we will stay in the work queue after
		 * sending the data. Otherwise, interrupt handler
		 * takes over after sending the data.
		 */
		poll_next = (qc->tf.flags & ATA_TFLAG_POLLING);

		/* check device status */
		if (FUNC14((status & ATA_DRQ) == 0)) {
			/* handle BSY=0, DRQ=0 as error */
			if (FUNC12(status & (ATA_ERR | ATA_DF)))
				/* device stops HSM for abort/error */
				qc->err_mask |= AC_ERR_DEV;
			else {
				/* HSM violation. Let EH handle this */
				FUNC4(ehi,
					"ST_FIRST: !(DRQ|ERR|DF)");
				qc->err_mask |= AC_ERR_HSM;
			}

			ap->hsm_task_state = HSM_ST_ERR;
			goto fsm_start;
		}

		/* Device should not ask for data transfer (DRQ=1)
		 * when it finds something wrong.
		 * We ignore DRQ here and stop the HSM by
		 * changing hsm_task_state to HSM_ST_ERR and
		 * let the EH abort the command or reset the device.
		 */
		if (FUNC14(status & (ATA_ERR | ATA_DF))) {
			/* Some ATAPI tape drives forget to clear the ERR bit
			 * when doing the next command (mostly request sense).
			 * We ignore ERR here to workaround and proceed sending
			 * the CDB.
			 */
			if (!(qc->dev->horkage & ATA_HORKAGE_STUCK_ERR)) {
				FUNC4(ehi, "ST_FIRST: "
					"DRQ=1 with device error, "
					"dev_stat 0x%X", status);
				qc->err_mask |= AC_ERR_HSM;
				ap->hsm_task_state = HSM_ST_ERR;
				goto fsm_start;
			}
		}

		if (qc->tf.protocol == ATA_PROT_PIO) {
			/* PIO data out protocol.
			 * send first data block.
			 */

			/* ata_pio_sectors() might change the state
			 * to HSM_ST_LAST. so, the state is changed here
			 * before ata_pio_sectors().
			 */
			ap->hsm_task_state = HSM_ST;
			FUNC8(qc);
		} else
			/* send CDB */
			FUNC11(ap, qc);

		/* if polling, ata_sff_pio_task() handles the rest.
		 * otherwise, interrupt handler takes over from here.
		 */
		break;

	case HSM_ST:
		/* complete command or read/write the data register */
		if (qc->tf.protocol == ATAPI_PROT_PIO) {
			/* ATAPI PIO protocol */
			if ((status & ATA_DRQ) == 0) {
				/* No more data to transfer or device error.
				 * Device error will be tagged in HSM_ST_LAST.
				 */
				ap->hsm_task_state = HSM_ST_LAST;
				goto fsm_start;
			}

			/* Device should not ask for data transfer (DRQ=1)
			 * when it finds something wrong.
			 * We ignore DRQ here and stop the HSM by
			 * changing hsm_task_state to HSM_ST_ERR and
			 * let the EH abort the command or reset the device.
			 */
			if (FUNC14(status & (ATA_ERR | ATA_DF))) {
				FUNC4(ehi, "ST-ATAPI: "
					"DRQ=1 with device error, "
					"dev_stat 0x%X", status);
				qc->err_mask |= AC_ERR_HSM;
				ap->hsm_task_state = HSM_ST_ERR;
				goto fsm_start;
			}

			FUNC10(qc);

			if (FUNC14(ap->hsm_task_state == HSM_ST_ERR))
				/* bad ireason reported by device */
				goto fsm_start;

		} else {
			/* ATA PIO protocol */
			if (FUNC14((status & ATA_DRQ) == 0)) {
				/* handle BSY=0, DRQ=0 as error */
				if (FUNC12(status & (ATA_ERR | ATA_DF))) {
					/* device stops HSM for abort/error */
					qc->err_mask |= AC_ERR_DEV;

					/* If diagnostic failed and this is
					 * IDENTIFY, it's likely a phantom
					 * device.  Mark hint.
					 */
					if (qc->dev->horkage &
					    ATA_HORKAGE_DIAGNOSTIC)
						qc->err_mask |=
							AC_ERR_NODEV_HINT;
				} else {
					/* HSM violation. Let EH handle this.
					 * Phantom devices also trigger this
					 * condition.  Mark hint.
					 */
					FUNC4(ehi, "ST-ATA: "
						"DRQ=0 without device error, "
						"dev_stat 0x%X", status);
					qc->err_mask |= AC_ERR_HSM |
							AC_ERR_NODEV_HINT;
				}

				ap->hsm_task_state = HSM_ST_ERR;
				goto fsm_start;
			}

			/* For PIO reads, some devices may ask for
			 * data transfer (DRQ=1) alone with ERR=1.
			 * We respect DRQ here and transfer one
			 * block of junk data before changing the
			 * hsm_task_state to HSM_ST_ERR.
			 *
			 * For PIO writes, ERR=1 DRQ=1 doesn't make
			 * sense since the data block has been
			 * transferred to the device.
			 */
			if (FUNC14(status & (ATA_ERR | ATA_DF))) {
				/* data might be corrputed */
				qc->err_mask |= AC_ERR_DEV;

				if (!(qc->tf.flags & ATA_TFLAG_WRITE)) {
					FUNC8(qc);
					status = FUNC9(ap);
				}

				if (status & (ATA_BUSY | ATA_DRQ)) {
					FUNC4(ehi, "ST-ATA: "
						"BUSY|DRQ persists on ERR|DF, "
						"dev_stat 0x%X", status);
					qc->err_mask |= AC_ERR_HSM;
				}

				/* There are oddball controllers with
				 * status register stuck at 0x7f and
				 * lbal/m/h at zero which makes it
				 * pass all other presence detection
				 * mechanisms we have.  Set NODEV_HINT
				 * for it.  Kernel bz#7241.
				 */
				if (status == 0x7f)
					qc->err_mask |= AC_ERR_NODEV_HINT;

				/* ata_pio_sectors() might change the
				 * state to HSM_ST_LAST. so, the state
				 * is changed after ata_pio_sectors().
				 */
				ap->hsm_task_state = HSM_ST_ERR;
				goto fsm_start;
			}

			FUNC8(qc);

			if (ap->hsm_task_state == HSM_ST_LAST &&
			    (!(qc->tf.flags & ATA_TFLAG_WRITE))) {
				/* all data read */
				status = FUNC9(ap);
				goto fsm_start;
			}
		}

		poll_next = 1;
		break;

	case HSM_ST_LAST:
		if (FUNC14(!FUNC7(status))) {
			qc->err_mask |= FUNC3(status);
			ap->hsm_task_state = HSM_ST_ERR;
			goto fsm_start;
		}

		/* no more data to transfer */
		FUNC0("ata%u: dev %u command complete, drv_stat 0x%x\n",
			ap->print_id, qc->dev->devno, status);

		FUNC2(qc->err_mask & (AC_ERR_DEV | AC_ERR_HSM));

		ap->hsm_task_state = HSM_ST_IDLE;

		/* complete taskfile transaction */
		FUNC6(qc, in_wq);

		poll_next = 0;
		break;

	case HSM_ST_ERR:
		ap->hsm_task_state = HSM_ST_IDLE;

		/* complete taskfile transaction */
		FUNC6(qc, in_wq);

		poll_next = 0;
		break;
	default:
		poll_next = 0;
		FUNC1(true, "ata%d: SFF host state machine in invalid state %d",
		     ap->print_id, ap->hsm_task_state);
	}

	return poll_next;
}