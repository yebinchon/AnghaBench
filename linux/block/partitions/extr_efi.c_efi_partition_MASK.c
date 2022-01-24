#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  char u8 ;
typedef  unsigned int u64 ;
typedef  int u32 ;
struct partition_meta_info {int* volname; int /*<<< orphan*/  uuid; } ;
struct parsed_partitions {int limit; int /*<<< orphan*/  pp_buf; TYPE_1__* parts; int /*<<< orphan*/  bdev; } ;
struct TYPE_9__ {int* partition_name; int /*<<< orphan*/  unique_partition_guid; int /*<<< orphan*/  partition_type_guid; int /*<<< orphan*/  starting_lba; int /*<<< orphan*/  ending_lba; int /*<<< orphan*/  num_partition_entries; } ;
typedef  TYPE_2__ gpt_header ;
typedef  TYPE_2__ gpt_entry ;
struct TYPE_8__ {int has_info; struct partition_meta_info info; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDPART_FLAG_RAID ; 
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PARTITION_LINUX_RAID_GUID ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct parsed_partitions*,TYPE_2__**,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct parsed_partitions*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC15(struct parsed_partitions *state)
{
	gpt_header *gpt = NULL;
	gpt_entry *ptes = NULL;
	u32 i;
	unsigned ssz = FUNC1(state->bdev) / 512;

	if (!FUNC4(state, &gpt, &ptes) || !gpt || !ptes) {
		FUNC7(gpt);
		FUNC7(ptes);
		return 0;
	}

	FUNC12("GUID Partition Table is valid!  Yea!\n");

	for (i = 0; i < FUNC9(gpt->num_partition_entries) && i < state->limit-1; i++) {
		struct partition_meta_info *info;
		unsigned label_count = 0;
		unsigned label_max;
		u64 start = FUNC10(ptes[i].starting_lba);
		u64 size = FUNC10(ptes[i].ending_lba) -
			   FUNC10(ptes[i].starting_lba) + 1ULL;

		if (!FUNC5(&ptes[i], FUNC8(state->bdev)))
			continue;

		FUNC13(state, i+1, start * ssz, size * ssz);

		/* If this is a RAID volume, tell md */
		if (!FUNC3(ptes[i].partition_type_guid, PARTITION_LINUX_RAID_GUID))
			state->parts[i + 1].flags = ADDPART_FLAG_RAID;

		info = &state->parts[i + 1].info;
		FUNC2(&ptes[i].unique_partition_guid, info->uuid);

		/* Naively convert UTF16-LE to 7 bits. */
		label_max = FUNC11(FUNC0(info->volname) - 1,
				FUNC0(ptes[i].partition_name));
		info->volname[label_max] = 0;
		while (label_count < label_max) {
			u8 c = ptes[i].partition_name[label_count] & 0xff;
			if (c && !FUNC6(c))
				c = '!';
			info->volname[label_count] = c;
			label_count++;
		}
		state->parts[i + 1].has_info = true;
	}
	FUNC7(ptes);
	FUNC7(gpt);
	FUNC14(state->pp_buf, "\n", PAGE_SIZE);
	return 1;
}