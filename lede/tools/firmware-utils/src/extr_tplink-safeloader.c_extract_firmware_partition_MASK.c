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
struct flash_partition_entry {char* name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,struct flash_partition_entry*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(FILE *input_file, size_t firmware_offset, struct flash_partition_entry *entry, const char *output_directory)
{
	FILE *output_file;
	char output[PATH_MAX];

	FUNC3(output, PATH_MAX, "%s/%s", output_directory, entry->name);
	output_file = FUNC2(output, "wb+");
	if (output_file == NULL) {
		FUNC0(1, errno, "Can not open output file %s", output);
	}

	FUNC4(input_file, firmware_offset, entry, output_file);

	FUNC1(output_file);

	return 0;
}