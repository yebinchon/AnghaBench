#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int flags; int /*<<< orphan*/  protocol; } ;
struct ata_queued_cmd {int hw_tag; int flags; TYPE_3__ tf; TYPE_2__* dev; int /*<<< orphan*/  cdb; struct ata_port* ap; } ;
struct ata_port {struct ahci_port_priv* private_data; } ;
struct ahci_port_priv {void* cmd_tbl; } ;
struct TYPE_5__ {TYPE_1__* link; int /*<<< orphan*/  cdb_len; } ;
struct TYPE_4__ {int pmp; } ;

/* Variables and functions */
 int AHCI_CMD_ATAPI ; 
 int AHCI_CMD_PREFETCH ; 
 int AHCI_CMD_TBL_CDB ; 
 int AHCI_CMD_TBL_SZ ; 
 int AHCI_CMD_WRITE ; 
 int ATA_QCFLAG_DMAMAP ; 
 int ATA_TFLAG_WRITE ; 
 unsigned int FUNC0 (struct ata_queued_cmd*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahci_port_priv*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct ata_queued_cmd *qc)
{
	struct ata_port *ap = qc->ap;
	struct ahci_port_priv *pp = ap->private_data;
	int is_atapi = FUNC2(qc->tf.protocol);
	void *cmd_tbl;
	u32 opts;
	const u32 cmd_fis_len = 5; /* five dwords */
	unsigned int n_elem;

	/*
	 * Fill in command table information.  First, the header,
	 * a SATA Register - Host to Device command FIS.
	 */
	cmd_tbl = pp->cmd_tbl + qc->hw_tag * AHCI_CMD_TBL_SZ;

	FUNC3(&qc->tf, qc->dev->link->pmp, 1, cmd_tbl);
	if (is_atapi) {
		FUNC5(cmd_tbl + AHCI_CMD_TBL_CDB, 0, 32);
		FUNC4(cmd_tbl + AHCI_CMD_TBL_CDB, qc->cdb, qc->dev->cdb_len);
	}

	n_elem = 0;
	if (qc->flags & ATA_QCFLAG_DMAMAP)
		n_elem = FUNC0(qc, cmd_tbl);

	/*
	 * Fill in command slot information.
	 *
	 * ACard note: prd table length not filled in
	 */
	opts = cmd_fis_len | (qc->dev->link->pmp << 12);
	if (qc->tf.flags & ATA_TFLAG_WRITE)
		opts |= AHCI_CMD_WRITE;
	if (is_atapi)
		opts |= AHCI_CMD_ATAPI | AHCI_CMD_PREFETCH;

	FUNC1(pp, qc->hw_tag, opts);
}