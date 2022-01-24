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
typedef  int uint32_t ;
struct mylo_partition_table {int dummy; } ;
struct mylo_partition_header {int dummy; } ;
struct mylo_fw_blockdesc {void* blen; void* dlen; void* addr; void* type; } ;
struct fw_block {int size; int flags; int addr; int blocklen; } ;
typedef  int /*<<< orphan*/  desc ;
struct TYPE_2__ {int part_offset; int part_size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int BLOCK_FLAG_HAVEHDR ; 
 int FW_DESC_TYPE_USED ; 
 void* FUNC1 (int) ; 
 int MYLO_MAX_PARTITIONS ; 
 int PART_NAME_LEN ; 
 TYPE_1__* board ; 
 struct fw_block* fw_blocks ; 
 int fw_num_blocks ; 
 scalar_t__ fw_num_partitions ; 
 int /*<<< orphan*/  FUNC2 (struct mylo_fw_blockdesc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct mylo_fw_blockdesc*,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct fw_block*,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int*) ; 

int
FUNC6(FILE *outfile, uint32_t *crc)
{
	struct mylo_fw_blockdesc desc;
	struct fw_block *b;
	uint32_t dlen;
	int i;

	/*
	 * if at least one partition specified, write out block descriptor
	 * for the partition table
	 */
	if (fw_num_partitions > 0) {
		desc.type = FUNC1(FW_DESC_TYPE_USED);
		desc.addr = FUNC1(board->part_offset);
		desc.dlen = FUNC1(sizeof(struct mylo_partition_table) +
					(MYLO_MAX_PARTITIONS * PART_NAME_LEN));
		desc.blen = FUNC1(board->part_size);

		if (FUNC3(outfile, &desc, crc) != 0)
		        return -1;
	}

	/*
	 * write out block descriptors for each files
	 */
	for (i = 0; i < fw_num_blocks; i++) {
		b = &fw_blocks[i];

		/* detect block size */
		dlen = b->size;
		if ((b->flags & BLOCK_FLAG_HAVEHDR) != 0) {
			dlen += sizeof(struct mylo_partition_header);
		}

		/* round up to 4 bytes */
		dlen = FUNC0(dlen, 4);

		/* setup the descriptor */
		desc.type = FUNC1(FW_DESC_TYPE_USED);
		desc.addr = FUNC1(b->addr);
		desc.dlen = FUNC1(dlen);
		desc.blen = FUNC1(b->blocklen);

		if (FUNC3(outfile, &desc, crc) != 0)
			return -1;
	}

	/*
	 * write out the null block descriptor
	 */
	FUNC2(&desc, 0, sizeof(desc));
	if (FUNC3(outfile, &desc, crc) != 0)
		return -1;

	if (FUNC5(outfile, crc) != 0)
		return -1;

	/*
	 * write out data for each blocks
	 */
	for (i = 0; i < fw_num_blocks; i++) {
		b = &fw_blocks[i];
		if (FUNC4(outfile, b, crc) != 0)
		        return -1;
	}

	return 0;
}