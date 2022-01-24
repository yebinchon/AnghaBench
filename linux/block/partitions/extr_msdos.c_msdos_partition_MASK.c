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
typedef  int /*<<< orphan*/  u32 ;
struct partition {int boot_ind; } ;
struct parsed_partitions {int next; int /*<<< orphan*/  pp_buf; TYPE_1__* parts; int /*<<< orphan*/  bdev; } ;
struct fat_boot_sector {int /*<<< orphan*/  media; scalar_t__ fats; scalar_t__ reserved; } ;
typedef  int sector_t ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {unsigned char id; int /*<<< orphan*/  (* parse ) (struct parsed_partitions*,int,int,int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  Sector ;

/* Variables and functions */
 int /*<<< orphan*/  ADDPART_FLAG_RAID ; 
 unsigned char DM6_PARTITION ; 
 unsigned char EFI_PMBR_OSTYPE_EFI_GPT ; 
 unsigned char EZD_PARTITION ; 
 unsigned char LINUX_RAID_PARTITION ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 unsigned char FUNC0 (struct partition*) ; 
 scalar_t__ FUNC1 (struct parsed_partitions*,unsigned char*) ; 
 int FUNC2 (struct parsed_partitions*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct partition*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*) ; 
 int FUNC10 (struct partition*) ; 
 int /*<<< orphan*/  FUNC11 (struct parsed_partitions*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct parsed_partitions*,int,int,int) ; 
 unsigned char* FUNC14 (struct parsed_partitions*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct parsed_partitions*,int,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct partition*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct parsed_partitions*,int,int,int) ; 
 TYPE_2__* subtypes ; 

int FUNC19(struct parsed_partitions *state)
{
	sector_t sector_size = FUNC3(state->bdev) / 512;
	Sector sect;
	unsigned char *data;
	struct partition *p;
	struct fat_boot_sector *fb;
	int slot;
	u32 disksig;

	data = FUNC14(state, 0, &sect);
	if (!data)
		return -1;

	/*
	 * Note order! (some AIX disks, e.g. unbootable kind,
	 * have no MSDOS 55aa)
	 */
	if (FUNC1(state, data)) {
		FUNC12(sect);
#ifdef CONFIG_AIX_PARTITION
		return aix_partition(state);
#else
		FUNC17(state->pp_buf, " [AIX]", PAGE_SIZE);
		return 0;
#endif
	}

	if (!FUNC9(data + 510)) {
		FUNC12(sect);
		return 0;
	}

	/*
	 * Now that the 55aa signature is present, this is probably
	 * either the boot sector of a FAT filesystem or a DOS-type
	 * partition table. Reject this in case the boot indicator
	 * is not 0 or 0x80.
	 */
	p = (struct partition *) (data + 0x1be);
	for (slot = 1; slot <= 4; slot++, p++) {
		if (p->boot_ind != 0 && p->boot_ind != 0x80) {
			/*
			 * Even without a valid boot inidicator value
			 * its still possible this is valid FAT filesystem
			 * without a partition table.
			 */
			fb = (struct fat_boot_sector *) data;
			if (slot == 1 && fb->reserved && fb->fats
				&& FUNC4(fb->media)) {
				FUNC17(state->pp_buf, "\n", PAGE_SIZE);
				FUNC12(sect);
				return 1;
			} else {
				FUNC12(sect);
				return 0;
			}
		}
	}

#ifdef CONFIG_EFI_PARTITION
	p = (struct partition *) (data + 0x1be);
	for (slot = 1 ; slot <= 4 ; slot++, p++) {
		/* If this is an EFI GPT disk, msdos should ignore it. */
		if (SYS_IND(p) == EFI_PMBR_OSTYPE_EFI_GPT) {
			put_dev_sector(sect);
			return 0;
		}
	}
#endif
	p = (struct partition *) (data + 0x1be);

	disksig = FUNC6((__le32 *)(data + 0x1b8));

	/*
	 * Look for partitions in two passes:
	 * First find the primary and DOS-type extended partitions.
	 * On the second pass look inside *BSD, Unixware and Solaris partitions.
	 */

	state->next = 5;
	for (slot = 1 ; slot <= 4 ; slot++, p++) {
		sector_t start = FUNC16(p)*sector_size;
		sector_t size = FUNC10(p)*sector_size;

		if (!size)
			continue;
		if (FUNC5(p)) {
			/*
			 * prevent someone doing mkfs or mkswap on an
			 * extended partition, but leave room for LILO
			 * FIXME: this uses one logical sector for > 512b
			 * sector, although it may not be enough/proper.
			 */
			sector_t n = 2;

			n = FUNC8(size, FUNC7(sector_size, n));
			FUNC13(state, slot, start, n);

			FUNC17(state->pp_buf, " <", PAGE_SIZE);
			FUNC11(state, start, size, disksig);
			FUNC17(state->pp_buf, " >", PAGE_SIZE);
			continue;
		}
		FUNC13(state, slot, start, size);
		FUNC15(state, slot, disksig);
		if (FUNC0(p) == LINUX_RAID_PARTITION)
			state->parts[slot].flags = ADDPART_FLAG_RAID;
		if (FUNC0(p) == DM6_PARTITION)
			FUNC17(state->pp_buf, "[DM]", PAGE_SIZE);
		if (FUNC0(p) == EZD_PARTITION)
			FUNC17(state->pp_buf, "[EZD]", PAGE_SIZE);
	}

	FUNC17(state->pp_buf, "\n", PAGE_SIZE);

	/* second pass - output for each on a separate line */
	p = (struct partition *) (0x1be + data);
	for (slot = 1 ; slot <= 4 ; slot++, p++) {
		unsigned char id = FUNC0(p);
		int n;

		if (!FUNC10(p))
			continue;

		for (n = 0; subtypes[n].parse && id != subtypes[n].id; n++)
			;

		if (!subtypes[n].parse)
			continue;
		subtypes[n].parse(state, FUNC16(p) * sector_size,
				  FUNC10(p) * sector_size, slot);
	}
	FUNC12(sect);
	return 1;
}