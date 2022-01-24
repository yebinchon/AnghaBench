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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct sg_mapping_iter {char* addr; unsigned int length; } ;
struct scsi_cmnd {int dummy; } ;
struct ata_queued_cmd {struct scsi_cmnd* scsicmd; } ;

/* Variables and functions */
 int SG_MITER_ATOMIC ; 
 int SG_MITER_TO_SG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_queued_cmd*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC11 (struct sg_mapping_iter*) ; 
 int /*<<< orphan*/  FUNC12 (struct sg_mapping_iter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sg_mapping_iter*) ; 

__attribute__((used)) static void FUNC14(struct ata_queued_cmd *qc)
{
	struct scsi_cmnd *scmd = qc->scsicmd;
	struct sg_mapping_iter miter;
	unsigned long flags;
	unsigned int bytes = 0;

	FUNC12(&miter, FUNC10(scmd), FUNC9(scmd),
		       SG_MITER_TO_SG | SG_MITER_ATOMIC);

	FUNC6(flags);
	while (FUNC11(&miter)) {
		unsigned int offset = 0;

		if (bytes == 0) {
			char *hdr;
			u32 list_length;
			u64 max_lba, opt_lba;
			u16 same;

			/* Swizzle header */
			hdr = miter.addr;
			list_length = FUNC3(&hdr[0]);
			same = FUNC2(&hdr[4]);
			max_lba = FUNC4(&hdr[8]);
			opt_lba = FUNC4(&hdr[16]);
			FUNC7(list_length, &hdr[0]);
			hdr[4] = same & 0xf;
			FUNC8(max_lba, &hdr[8]);
			FUNC8(opt_lba, &hdr[16]);
			offset += 64;
			bytes += 64;
		}
		while (offset < miter.length) {
			char *rec;
			u8 cond, type, non_seq, reset;
			u64 size, start, wp;

			/* Swizzle zone descriptor */
			rec = miter.addr + offset;
			type = rec[0] & 0xf;
			cond = (rec[1] >> 4) & 0xf;
			non_seq = (rec[1] & 2);
			reset = (rec[1] & 1);
			size = FUNC4(&rec[8]);
			start = FUNC4(&rec[16]);
			wp = FUNC4(&rec[24]);
			rec[0] = type;
			rec[1] = (cond << 4) | non_seq | reset;
			FUNC8(size, &rec[8]);
			FUNC8(start, &rec[16]);
			FUNC8(wp, &rec[24]);
			FUNC0(offset + 64 > miter.length);
			offset += 64;
			bytes += 64;
		}
	}
	FUNC13(&miter);
	FUNC5(flags);

	FUNC1(qc);
}