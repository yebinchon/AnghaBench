#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_4__ {int /*<<< orphan*/  my_lba; int /*<<< orphan*/  alternate_lba; int /*<<< orphan*/  partition_entry_array_crc32; int /*<<< orphan*/  sizeof_partition_entry; int /*<<< orphan*/  num_partition_entries; int /*<<< orphan*/  disk_guid; int /*<<< orphan*/  last_usable_lba; int /*<<< orphan*/  first_usable_lba; } ;
typedef  TYPE_1__ gpt_header ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(gpt_header *pgpt, gpt_header *agpt, u64 lastlba)
{
	int error_found = 0;
	if (!pgpt || !agpt)
		return;
	if (FUNC2(pgpt->my_lba) != FUNC2(agpt->alternate_lba)) {
		FUNC3("GPT:Primary header LBA != Alt. header alternate_lba\n");
		FUNC3("GPT:%lld != %lld\n",
		       (unsigned long long)FUNC2(pgpt->my_lba),
                       (unsigned long long)FUNC2(agpt->alternate_lba));
		error_found++;
	}
	if (FUNC2(pgpt->alternate_lba) != FUNC2(agpt->my_lba)) {
		FUNC3("GPT:Primary header alternate_lba != Alt. header my_lba\n");
		FUNC3("GPT:%lld != %lld\n",
		       (unsigned long long)FUNC2(pgpt->alternate_lba),
                       (unsigned long long)FUNC2(agpt->my_lba));
		error_found++;
	}
	if (FUNC2(pgpt->first_usable_lba) !=
            FUNC2(agpt->first_usable_lba)) {
		FUNC3("GPT:first_usable_lbas don't match.\n");
		FUNC3("GPT:%lld != %lld\n",
		       (unsigned long long)FUNC2(pgpt->first_usable_lba),
                       (unsigned long long)FUNC2(agpt->first_usable_lba));
		error_found++;
	}
	if (FUNC2(pgpt->last_usable_lba) !=
            FUNC2(agpt->last_usable_lba)) {
		FUNC3("GPT:last_usable_lbas don't match.\n");
		FUNC3("GPT:%lld != %lld\n",
		       (unsigned long long)FUNC2(pgpt->last_usable_lba),
                       (unsigned long long)FUNC2(agpt->last_usable_lba));
		error_found++;
	}
	if (FUNC0(pgpt->disk_guid, agpt->disk_guid)) {
		FUNC3("GPT:disk_guids don't match.\n");
		error_found++;
	}
	if (FUNC1(pgpt->num_partition_entries) !=
            FUNC1(agpt->num_partition_entries)) {
		FUNC3("GPT:num_partition_entries don't match: "
		       "0x%x != 0x%x\n",
		       FUNC1(pgpt->num_partition_entries),
		       FUNC1(agpt->num_partition_entries));
		error_found++;
	}
	if (FUNC1(pgpt->sizeof_partition_entry) !=
            FUNC1(agpt->sizeof_partition_entry)) {
		FUNC3("GPT:sizeof_partition_entry values don't match: "
		       "0x%x != 0x%x\n",
                       FUNC1(pgpt->sizeof_partition_entry),
		       FUNC1(agpt->sizeof_partition_entry));
		error_found++;
	}
	if (FUNC1(pgpt->partition_entry_array_crc32) !=
            FUNC1(agpt->partition_entry_array_crc32)) {
		FUNC3("GPT:partition_entry_array_crc32 values don't match: "
		       "0x%x != 0x%x\n",
                       FUNC1(pgpt->partition_entry_array_crc32),
		       FUNC1(agpt->partition_entry_array_crc32));
		error_found++;
	}
	if (FUNC2(pgpt->alternate_lba) != lastlba) {
		FUNC3("GPT:Primary header thinks Alt. header is not at the end of the disk.\n");
		FUNC3("GPT:%lld != %lld\n",
			(unsigned long long)FUNC2(pgpt->alternate_lba),
			(unsigned long long)lastlba);
		error_found++;
	}

	if (FUNC2(agpt->my_lba) != lastlba) {
		FUNC3("GPT:Alternate GPT header not at the end of the disk.\n");
		FUNC3("GPT:%lld != %lld\n",
			(unsigned long long)FUNC2(agpt->my_lba),
			(unsigned long long)lastlba);
		error_found++;
	}

	if (error_found)
		FUNC3("GPT: Use GNU Parted to correct GPT errors.\n");
	return;
}