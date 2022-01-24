#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct ata_scsi_args {TYPE_1__* cmd; int /*<<< orphan*/  id; struct ata_device* dev; } ;
struct ata_device {int flags; scalar_t__ multi_count; } ;
typedef  int /*<<< orphan*/  sat_blk_desc ;
struct TYPE_3__ {int* cmnd; } ;

/* Variables and functions */
#define  ALL_MPAGES 131 
 int ALL_SUB_MPAGES ; 
 int ATA_DFLAG_LBA48 ; 
 int ATA_DFLAG_PIO ; 
#define  CACHE_MPAGE 130 
#define  CONTROL_MPAGE 129 
 int /*<<< orphan*/  ILLEGAL_REQUEST ; 
 int MODE_SENSE ; 
#define  RW_RECOVERY_MPAGE 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_device*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ata_device*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ata_device*,TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int const*,int) ; 

__attribute__((used)) static unsigned int FUNC8(struct ata_scsi_args *args, u8 *rbuf)
{
	struct ata_device *dev = args->dev;
	u8 *scsicmd = args->cmd->cmnd, *p = rbuf;
	static const u8 sat_blk_desc[] = {
		0, 0, 0, 0,	/* number of blocks: sat unspecified */
		0,
		0, 0x2, 0x0	/* block length: 512 bytes */
	};
	u8 pg, spg;
	unsigned int ebd, page_control, six_byte;
	u8 dpofua, bp = 0xff;
	u16 fp;

	FUNC0("ENTER\n");

	six_byte = (scsicmd[0] == MODE_SENSE);
	ebd = !(scsicmd[1] & 0x8);      /* dbd bit inverted == edb */
	/*
	 * LLBA bit in msense(10) ignored (compliant)
	 */

	page_control = scsicmd[2] >> 6;
	switch (page_control) {
	case 0: /* current */
	case 1: /* changeable */
	case 2: /* defaults */
		break;  /* supported */
	case 3: /* saved */
		goto saving_not_supp;
	default:
		fp = 2;
		bp = 6;
		goto invalid_fld;
	}

	if (six_byte)
		p += 4 + (ebd ? 8 : 0);
	else
		p += 8 + (ebd ? 8 : 0);

	pg = scsicmd[2] & 0x3f;
	spg = scsicmd[3];
	/*
	 * No mode subpages supported (yet) but asking for _all_
	 * subpages may be valid
	 */
	if (spg && (spg != ALL_SUB_MPAGES)) {
		fp = 3;
		goto invalid_fld;
	}

	switch(pg) {
	case RW_RECOVERY_MPAGE:
		p += FUNC4(p, page_control == 1);
		break;

	case CACHE_MPAGE:
		p += FUNC2(args->id, p, page_control == 1);
		break;

	case CONTROL_MPAGE:
		p += FUNC3(args->dev, p, page_control == 1);
		break;

	case ALL_MPAGES:
		p += FUNC4(p, page_control == 1);
		p += FUNC2(args->id, p, page_control == 1);
		p += FUNC3(args->dev, p, page_control == 1);
		break;

	default:		/* invalid page code */
		fp = 2;
		goto invalid_fld;
	}

	dpofua = 0;
	if (FUNC1(args->id) && (dev->flags & ATA_DFLAG_LBA48) &&
	    (!(dev->flags & ATA_DFLAG_PIO) || dev->multi_count))
		dpofua = 1 << 4;

	if (six_byte) {
		rbuf[0] = p - rbuf - 1;
		rbuf[2] |= dpofua;
		if (ebd) {
			rbuf[3] = sizeof(sat_blk_desc);
			FUNC7(rbuf + 4, sat_blk_desc, sizeof(sat_blk_desc));
		}
	} else {
		unsigned int output_len = p - rbuf - 2;

		rbuf[0] = output_len >> 8;
		rbuf[1] = output_len;
		rbuf[3] |= dpofua;
		if (ebd) {
			rbuf[7] = sizeof(sat_blk_desc);
			FUNC7(rbuf + 8, sat_blk_desc, sizeof(sat_blk_desc));
		}
	}
	return 0;

invalid_fld:
	FUNC5(dev, args->cmd, fp, bp);
	return 1;

saving_not_supp:
	FUNC6(dev, args->cmd, ILLEGAL_REQUEST, 0x39, 0x0);
	 /* "Saving parameters not supported" */
	return 1;
}