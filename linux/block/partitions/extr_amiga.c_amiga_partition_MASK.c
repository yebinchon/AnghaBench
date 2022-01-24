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
typedef  int /*<<< orphan*/  tmp ;
struct parsed_partitions {int /*<<< orphan*/  pp_buf; int /*<<< orphan*/  bdev; } ;
struct RigidDiskBlock {scalar_t__ rdb_SummedLongs; scalar_t__ rdb_BlockBytes; scalar_t__ rdb_PartitionList; } ;
struct PartitionBlock {scalar_t__ pb_Next; scalar_t__ pb_ID; scalar_t__ pb_SummedLongs; scalar_t__* pb_Environment; } ;
typedef  scalar_t__ __be32 ;
typedef  int /*<<< orphan*/  Sector ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  IDNAME_PARTITION ; 
 int /*<<< orphan*/  IDNAME_RIGIDDISK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int RDB_ALLOCATION_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct parsed_partitions*,int /*<<< orphan*/ ,int,int) ; 
 unsigned char* FUNC7 (struct parsed_partitions*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ warn_no_part ; 

int FUNC10(struct parsed_partitions *state)
{
	Sector sect;
	unsigned char *data;
	struct RigidDiskBlock *rdb;
	struct PartitionBlock *pb;
	int start_sect, nr_sects, blk, part, res = 0;
	int blksize = 1;	/* Multiplier for disk block size */
	int slot = 1;
	char b[BDEVNAME_SIZE];

	for (blk = 0; ; blk++, FUNC5(sect)) {
		if (blk == RDB_ALLOCATION_LIMIT)
			goto rdb_done;
		data = FUNC7(state, blk, &sect);
		if (!data) {
			if (warn_no_part)
				FUNC4("Dev %s: unable to read RDB block %d\n",
				       FUNC0(state->bdev, b), blk);
			res = -1;
			goto rdb_done;
		}
		if (*(__be32 *)data != FUNC3(IDNAME_RIGIDDISK))
			continue;

		rdb = (struct RigidDiskBlock *)data;
		if (FUNC2((__be32 *)data, FUNC1(rdb->rdb_SummedLongs) & 0x7F) == 0)
			break;
		/* Try again with 0xdc..0xdf zeroed, Windows might have
		 * trashed it.
		 */
		*(__be32 *)(data+0xdc) = 0;
		if (FUNC2((__be32 *)data,
				FUNC1(rdb->rdb_SummedLongs) & 0x7F)==0) {
			FUNC4("Trashed word at 0xd0 in block %d ignored in checksum calculation\n",
			       blk);
			break;
		}

		FUNC4("Dev %s: RDB in block %d has bad checksum\n",
		       FUNC0(state->bdev, b), blk);
	}

	/* blksize is blocks per 512 byte standard block */
	blksize = FUNC1( rdb->rdb_BlockBytes ) / 512;

	{
		char tmp[7 + 10 + 1 + 1];

		/* Be more informative */
		FUNC8(tmp, sizeof(tmp), " RDSK (%d)", blksize * 512);
		FUNC9(state->pp_buf, tmp, PAGE_SIZE);
	}
	blk = FUNC1(rdb->rdb_PartitionList);
	FUNC5(sect);
	for (part = 1; blk>0 && part<=16; part++, FUNC5(sect)) {
		blk *= blksize;	/* Read in terms partition table understands */
		data = FUNC7(state, blk, &sect);
		if (!data) {
			if (warn_no_part)
				FUNC4("Dev %s: unable to read partition block %d\n",
				       FUNC0(state->bdev, b), blk);
			res = -1;
			goto rdb_done;
		}
		pb  = (struct PartitionBlock *)data;
		blk = FUNC1(pb->pb_Next);
		if (pb->pb_ID != FUNC3(IDNAME_PARTITION))
			continue;
		if (FUNC2((__be32 *)pb, FUNC1(pb->pb_SummedLongs) & 0x7F) != 0 )
			continue;

		/* Tell Kernel about it */

		nr_sects = (FUNC1(pb->pb_Environment[10]) + 1 -
			    FUNC1(pb->pb_Environment[9])) *
			   FUNC1(pb->pb_Environment[3]) *
			   FUNC1(pb->pb_Environment[5]) *
			   blksize;
		if (!nr_sects)
			continue;
		start_sect = FUNC1(pb->pb_Environment[9]) *
			     FUNC1(pb->pb_Environment[3]) *
			     FUNC1(pb->pb_Environment[5]) *
			     blksize;
		FUNC6(state,slot++,start_sect,nr_sects);
		{
			/* Be even more informative to aid mounting */
			char dostype[4];
			char tmp[42];

			__be32 *dt = (__be32 *)dostype;
			*dt = pb->pb_Environment[16];
			if (dostype[3] < ' ')
				FUNC8(tmp, sizeof(tmp), " (%c%c%c^%c)",
					dostype[0], dostype[1],
					dostype[2], dostype[3] + '@' );
			else
				FUNC8(tmp, sizeof(tmp), " (%c%c%c%c)",
					dostype[0], dostype[1],
					dostype[2], dostype[3]);
			FUNC9(state->pp_buf, tmp, PAGE_SIZE);
			FUNC8(tmp, sizeof(tmp), "(res %d spb %d)",
				FUNC1(pb->pb_Environment[6]),
				FUNC1(pb->pb_Environment[4]));
			FUNC9(state->pp_buf, tmp, PAGE_SIZE);
		}
		res = 1;
	}
	FUNC9(state->pp_buf, "\n", PAGE_SIZE);

rdb_done:
	return res;
}