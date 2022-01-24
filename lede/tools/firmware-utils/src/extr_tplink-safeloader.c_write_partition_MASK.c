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
struct flash_partition_entry {int size; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char*,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,size_t,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(
		FILE *input_file,
		size_t firmware_offset,
		struct flash_partition_entry *entry,
		FILE *output_file)
{
	char buf[4096];
	size_t offset;

	FUNC2(input_file, entry->base + firmware_offset, SEEK_SET);

	for (offset = 0; sizeof(buf) + offset <= entry->size; offset += sizeof(buf)) {
		if (FUNC1(buf, sizeof(buf), 1, input_file) < 0)
			FUNC0(1, errno, "Can not read partition from input_file");

		if (FUNC3(buf, sizeof(buf), 1, output_file) < 0)
			FUNC0(1, errno, "Can not write partition to output_file");
	}
	/* write last chunk smaller than buffer */
	if (offset < entry->size) {
		offset = entry->size - offset;
		if (FUNC1(buf, offset, 1, input_file) < 0)
			FUNC0(1, errno, "Can not read partition from input_file");
		if (FUNC3(buf, offset, 1, output_file) < 0)
			FUNC0(1, errno, "Can not write partition to output_file");
	}
}