#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct TYPE_6__ {int flags; } ;
struct ata_queued_cmd {scalar_t__ curbytes; scalar_t__ nbytes; scalar_t__ sect_size; unsigned int cursg_ofs; TYPE_3__* cursg; TYPE_1__ tf; struct ata_port* ap; } ;
struct ata_port {void* hsm_task_state; TYPE_2__* ops; } ;
struct TYPE_8__ {unsigned int offset; unsigned int length; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* sff_data_xfer ) (struct ata_queued_cmd*,unsigned char*,scalar_t__,int) ;} ;

/* Variables and functions */
 int ATA_TFLAG_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 void* HSM_ST_LAST ; 
 unsigned int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 unsigned char* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 struct page* FUNC5 (struct page*,unsigned int) ; 
 TYPE_3__* FUNC6 (TYPE_3__*) ; 
 struct page* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct ata_queued_cmd*,unsigned char*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC9(struct ata_queued_cmd *qc)
{
	int do_write = (qc->tf.flags & ATA_TFLAG_WRITE);
	struct ata_port *ap = qc->ap;
	struct page *page;
	unsigned int offset;
	unsigned char *buf;

	if (!qc->cursg) {
		qc->curbytes = qc->nbytes;
		return;
	}
	if (qc->curbytes == qc->nbytes - qc->sect_size)
		ap->hsm_task_state = HSM_ST_LAST;

	page = FUNC7(qc->cursg);
	offset = qc->cursg->offset + qc->cursg_ofs;

	/* get the current page and offset */
	page = FUNC5(page, (offset >> PAGE_SHIFT));
	offset %= PAGE_SIZE;

	FUNC0("data %s\n", qc->tf.flags & ATA_TFLAG_WRITE ? "write" : "read");

	/* do the actual data transfer */
	buf = FUNC3(page);
	ap->ops->sff_data_xfer(qc, buf + offset, qc->sect_size, do_write);
	FUNC4(buf);

	if (!do_write && !FUNC1(page))
		FUNC2(page);

	qc->curbytes += qc->sect_size;
	qc->cursg_ofs += qc->sect_size;

	if (qc->cursg_ofs == qc->cursg->length) {
		qc->cursg = FUNC6(qc->cursg);
		if (!qc->cursg)
			ap->hsm_task_state = HSM_ST_LAST;
		qc->cursg_ofs = 0;
	}
}