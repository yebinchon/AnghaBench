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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct scsi_device {size_t sector_size; } ;
struct scsi_cmnd {int* cmnd; int cmd_len; int /*<<< orphan*/  request; struct scsi_device* device; } ;
struct ata_taskfile {int hob_nsect; int nsect; int hob_feature; int feature; int auxiliary; int flags; int /*<<< orphan*/  command; int /*<<< orphan*/  protocol; } ;
struct ata_queued_cmd {int hw_tag; struct ata_device* dev; struct scsi_cmnd* scsicmd; struct ata_taskfile tf; } ;
struct ata_device {int horkage; int /*<<< orphan*/  id; int /*<<< orphan*/  dma_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_CMD_DSM ; 
 int /*<<< orphan*/  ATA_CMD_FPDMA_SEND ; 
 int ATA_DSM_TRIM ; 
 int ATA_HORKAGE_NOTRIM ; 
 int /*<<< orphan*/  ATA_PROT_DMA ; 
 int /*<<< orphan*/  ATA_PROT_NCQ ; 
 int ATA_SUBCMD_FPDMA_SEND_DSM ; 
 int ATA_TFLAG_DEVICE ; 
 int ATA_TFLAG_ISADDR ; 
 int ATA_TFLAG_LBA48 ; 
 int ATA_TFLAG_WRITE ; 
 int /*<<< orphan*/  ILLEGAL_REQUEST ; 
 int FUNC0 (struct scsi_cmnd*,int const,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ata_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct ata_device*,struct scsi_cmnd*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ata_device*,struct scsi_cmnd*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int const*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static unsigned int FUNC11(struct ata_queued_cmd *qc)
{
	struct ata_taskfile *tf = &qc->tf;
	struct scsi_cmnd *scmd = qc->scsicmd;
	struct scsi_device *sdp = scmd->device;
	size_t len = sdp->sector_size;
	struct ata_device *dev = qc->dev;
	const u8 *cdb = scmd->cmnd;
	u64 block;
	u32 n_block;
	const u32 trmax = len >> 3;
	u32 size;
	u16 fp;
	u8 bp = 0xff;
	u8 unmap = cdb[1] & 0x8;

	/* we may not issue DMA commands if no DMA mode is set */
	if (FUNC10(!dev->dma_mode))
		goto invalid_opcode;

	/*
	 * We only allow sending this command through the block layer,
	 * as it modifies the DATA OUT buffer, which would corrupt user
	 * memory for SG_IO commands.
	 */
	if (FUNC10(FUNC7(scmd->request)))
		goto invalid_opcode;

	if (FUNC10(scmd->cmd_len < 16)) {
		fp = 15;
		goto invalid_fld;
	}
	FUNC8(cdb, &block, &n_block);

	if (!unmap ||
	    (dev->horkage & ATA_HORKAGE_NOTRIM) ||
	    !FUNC2(dev->id)) {
		fp = 1;
		bp = 3;
		goto invalid_fld;
	}
	/* If the request is too large the cmd is invalid */
	if (n_block > 0xffff * trmax) {
		fp = 2;
		goto invalid_fld;
	}

	/*
	 * WRITE SAME always has a sector sized buffer as payload, this
	 * should never be a multiple entry S/G list.
	 */
	if (!FUNC9(scmd))
		goto invalid_param_len;

	/*
	 * size must match sector size in bytes
	 * For DATA SET MANAGEMENT TRIM in ACS-2 nsect (aka count)
	 * is defined as number of 512 byte blocks to be transferred.
	 */

	size = FUNC0(scmd, trmax, block, n_block);
	if (size != len)
		goto invalid_param_len;

	if (FUNC3(dev) && FUNC1(dev)) {
		/* Newer devices support queued TRIM commands */
		tf->protocol = ATA_PROT_NCQ;
		tf->command = ATA_CMD_FPDMA_SEND;
		tf->hob_nsect = ATA_SUBCMD_FPDMA_SEND_DSM & 0x1f;
		tf->nsect = qc->hw_tag << 3;
		tf->hob_feature = (size / 512) >> 8;
		tf->feature = size / 512;

		tf->auxiliary = 1;
	} else {
		tf->protocol = ATA_PROT_DMA;
		tf->hob_feature = 0;
		tf->feature = ATA_DSM_TRIM;
		tf->hob_nsect = (size / 512) >> 8;
		tf->nsect = size / 512;
		tf->command = ATA_CMD_DSM;
	}

	tf->flags |= ATA_TFLAG_ISADDR | ATA_TFLAG_DEVICE | ATA_TFLAG_LBA48 |
		     ATA_TFLAG_WRITE;

	FUNC4(qc);

	return 0;

invalid_fld:
	FUNC5(dev, scmd, fp, bp);
	return 1;
invalid_param_len:
	/* "Parameter list length error" */
	FUNC6(dev, scmd, ILLEGAL_REQUEST, 0x1a, 0x0);
	return 1;
invalid_opcode:
	/* "Invalid command operation code" */
	FUNC6(dev, scmd, ILLEGAL_REQUEST, 0x20, 0x0);
	return 1;
}