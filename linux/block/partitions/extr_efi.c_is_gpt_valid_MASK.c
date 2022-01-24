#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct parsed_partitions {int /*<<< orphan*/  bdev; } ;
struct TYPE_9__ {int /*<<< orphan*/  partition_entry_array_crc32; int /*<<< orphan*/  sizeof_partition_entry; int /*<<< orphan*/  num_partition_entries; int /*<<< orphan*/  first_usable_lba; int /*<<< orphan*/  last_usable_lba; int /*<<< orphan*/  my_lba; int /*<<< orphan*/  header_crc32; int /*<<< orphan*/  header_size; int /*<<< orphan*/  signature; } ;
typedef  TYPE_1__ gpt_header ;
typedef  TYPE_1__ gpt_entry ;

/* Variables and functions */
 scalar_t__ GPT_HEADER_SIGNATURE ; 
 scalar_t__ KMALLOC_MAX_SIZE ; 
 TYPE_1__* FUNC0 (struct parsed_partitions*,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (struct parsed_partitions*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (unsigned char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static int FUNC10(struct parsed_partitions *state, u64 lba,
			gpt_header **gpt, gpt_entry **ptes)
{
	u32 crc, origcrc;
	u64 lastlba, pt_size;

	if (!ptes)
		return 0;
	if (!(*gpt = FUNC1(state, lba)))
		return 0;

	/* Check the GUID Partition Table signature */
	if (FUNC8((*gpt)->signature) != GPT_HEADER_SIGNATURE) {
		FUNC9("GUID Partition Table Header signature is wrong:"
			 "%lld != %lld\n",
			 (unsigned long long)FUNC8((*gpt)->signature),
			 (unsigned long long)GPT_HEADER_SIGNATURE);
		goto fail;
	}

	/* Check the GUID Partition Table header size is too big */
	if (FUNC7((*gpt)->header_size) >
			FUNC2(state->bdev)) {
		FUNC9("GUID Partition Table Header size is too large: %u > %u\n",
			FUNC7((*gpt)->header_size),
			FUNC2(state->bdev));
		goto fail;
	}

	/* Check the GUID Partition Table header size is too small */
	if (FUNC7((*gpt)->header_size) < sizeof(gpt_header)) {
		FUNC9("GUID Partition Table Header size is too small: %u < %zu\n",
			FUNC7((*gpt)->header_size),
			sizeof(gpt_header));
		goto fail;
	}

	/* Check the GUID Partition Table CRC */
	origcrc = FUNC7((*gpt)->header_crc32);
	(*gpt)->header_crc32 = 0;
	crc = FUNC4((const unsigned char *) (*gpt), FUNC7((*gpt)->header_size));

	if (crc != origcrc) {
		FUNC9("GUID Partition Table Header CRC is wrong: %x != %x\n",
			 crc, origcrc);
		goto fail;
	}
	(*gpt)->header_crc32 = FUNC3(origcrc);

	/* Check that the my_lba entry points to the LBA that contains
	 * the GUID Partition Table */
	if (FUNC8((*gpt)->my_lba) != lba) {
		FUNC9("GPT my_lba incorrect: %lld != %lld\n",
			 (unsigned long long)FUNC8((*gpt)->my_lba),
			 (unsigned long long)lba);
		goto fail;
	}

	/* Check the first_usable_lba and last_usable_lba are
	 * within the disk.
	 */
	lastlba = FUNC6(state->bdev);
	if (FUNC8((*gpt)->first_usable_lba) > lastlba) {
		FUNC9("GPT: first_usable_lba incorrect: %lld > %lld\n",
			 (unsigned long long)FUNC8((*gpt)->first_usable_lba),
			 (unsigned long long)lastlba);
		goto fail;
	}
	if (FUNC8((*gpt)->last_usable_lba) > lastlba) {
		FUNC9("GPT: last_usable_lba incorrect: %lld > %lld\n",
			 (unsigned long long)FUNC8((*gpt)->last_usable_lba),
			 (unsigned long long)lastlba);
		goto fail;
	}
	if (FUNC8((*gpt)->last_usable_lba) < FUNC8((*gpt)->first_usable_lba)) {
		FUNC9("GPT: last_usable_lba incorrect: %lld > %lld\n",
			 (unsigned long long)FUNC8((*gpt)->last_usable_lba),
			 (unsigned long long)FUNC8((*gpt)->first_usable_lba));
		goto fail;
	}
	/* Check that sizeof_partition_entry has the correct value */
	if (FUNC7((*gpt)->sizeof_partition_entry) != sizeof(gpt_entry)) {
		FUNC9("GUID Partition Entry Size check failed.\n");
		goto fail;
	}

	/* Sanity check partition table size */
	pt_size = (u64)FUNC7((*gpt)->num_partition_entries) *
		FUNC7((*gpt)->sizeof_partition_entry);
	if (pt_size > KMALLOC_MAX_SIZE) {
		FUNC9("GUID Partition Table is too large: %llu > %lu bytes\n",
			 (unsigned long long)pt_size, KMALLOC_MAX_SIZE);
		goto fail;
	}

	if (!(*ptes = FUNC0(state, *gpt)))
		goto fail;

	/* Check the GUID Partition Entry Array CRC */
	crc = FUNC4((const unsigned char *) (*ptes), pt_size);

	if (crc != FUNC7((*gpt)->partition_entry_array_crc32)) {
		FUNC9("GUID Partition Entry Array CRC check failed.\n");
		goto fail_ptes;
	}

	/* We're done, all's well */
	return 1;

 fail_ptes:
	FUNC5(*ptes);
	*ptes = NULL;
 fail:
	FUNC5(*gpt);
	*gpt = NULL;
	return 0;
}