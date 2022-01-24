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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct scsi_cmnd {int* cmnd; int cmd_len; int /*<<< orphan*/  result; TYPE_1__* device; struct request* request; } ;
struct request {int dummy; } ;
struct ata_queued_cmd {int nbytes; int /*<<< orphan*/  dev; int /*<<< orphan*/  hw_tag; int /*<<< orphan*/  tf; int /*<<< orphan*/  flags; struct scsi_cmnd* scsicmd; } ;
struct TYPE_2__ {int sector_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_QCFLAG_IO ; 
 unsigned int ATA_TFLAG_FUA ; 
 unsigned int ATA_TFLAG_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ERANGE ; 
 int /*<<< orphan*/  ILLEGAL_REQUEST ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  READ_10 133 
#define  READ_16 132 
#define  READ_6 131 
 int /*<<< orphan*/  SAM_STAT_GOOD ; 
#define  WRITE_10 130 
#define  WRITE_16 129 
#define  WRITE_6 128 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_cmnd*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct scsi_cmnd*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct request*) ; 
 int /*<<< orphan*/  FUNC8 (int const*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int const*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int const*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static unsigned int FUNC12(struct ata_queued_cmd *qc)
{
	struct scsi_cmnd *scmd = qc->scsicmd;
	const u8 *cdb = scmd->cmnd;
	struct request *rq = scmd->request;
	int class = FUNC1(FUNC7(rq));
	unsigned int tf_flags = 0;
	u64 block;
	u32 n_block;
	int rc;
	u16 fp = 0;

	if (cdb[0] == WRITE_10 || cdb[0] == WRITE_6 || cdb[0] == WRITE_16)
		tf_flags |= ATA_TFLAG_WRITE;

	/* Calculate the SCSI LBA, transfer length and FUA. */
	switch (cdb[0]) {
	case READ_10:
	case WRITE_10:
		if (FUNC11(scmd->cmd_len < 10)) {
			fp = 9;
			goto invalid_fld;
		}
		FUNC8(cdb, &block, &n_block);
		if (cdb[1] & (1 << 3))
			tf_flags |= ATA_TFLAG_FUA;
		if (!FUNC3(scmd, n_block))
			goto invalid_fld;
		break;
	case READ_6:
	case WRITE_6:
		if (FUNC11(scmd->cmd_len < 6)) {
			fp = 5;
			goto invalid_fld;
		}
		FUNC10(cdb, &block, &n_block);

		/* for 6-byte r/w commands, transfer length 0
		 * means 256 blocks of data, not 0 block.
		 */
		if (!n_block)
			n_block = 256;
		if (!FUNC3(scmd, n_block))
			goto invalid_fld;
		break;
	case READ_16:
	case WRITE_16:
		if (FUNC11(scmd->cmd_len < 16)) {
			fp = 15;
			goto invalid_fld;
		}
		FUNC9(cdb, &block, &n_block);
		if (cdb[1] & (1 << 3))
			tf_flags |= ATA_TFLAG_FUA;
		if (!FUNC3(scmd, n_block))
			goto invalid_fld;
		break;
	default:
		FUNC0("no-byte command\n");
		fp = 0;
		goto invalid_fld;
	}

	/* Check and compose ATA command */
	if (!n_block)
		/* For 10-byte and 16-byte SCSI R/W commands, transfer
		 * length 0 means transfer 0 block of data.
		 * However, for ATA R/W commands, sector count 0 means
		 * 256 or 65536 sectors, not 0 sectors as in SCSI.
		 *
		 * WARNING: one or two older ATA drives treat 0 as 0...
		 */
		goto nothing_to_do;

	qc->flags |= ATA_QCFLAG_IO;
	qc->nbytes = n_block * scmd->device->sector_size;

	rc = FUNC2(&qc->tf, qc->dev, block, n_block, tf_flags,
			     qc->hw_tag, class);

	if (FUNC6(rc == 0))
		return 0;

	if (rc == -ERANGE)
		goto out_of_range;
	/* treat all other errors as -EINVAL, fall through */
invalid_fld:
	FUNC4(qc->dev, scmd, fp, 0xff);
	return 1;

out_of_range:
	FUNC5(qc->dev, scmd, ILLEGAL_REQUEST, 0x21, 0x0);
	/* "Logical Block Address out of range" */
	return 1;

nothing_to_do:
	scmd->result = SAM_STAT_GOOD;
	return 1;
}