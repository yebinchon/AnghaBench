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
struct parsed_partitions {int /*<<< orphan*/  pp_buf; TYPE_1__* bdev; } ;
struct cmdline_parts {int dummy; } ;
typedef  int sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  bd_disk; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  add_part ; 
 scalar_t__ bdev_parts ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * cmdline ; 
 struct cmdline_parts* FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cmdline_parts*,int,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct parsed_partitions*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC8(struct parsed_partitions *state)
{
	sector_t disk_size;
	char bdev[BDEVNAME_SIZE];
	struct cmdline_parts *parts;

	if (cmdline) {
		if (bdev_parts)
			FUNC2(&bdev_parts);

		if (FUNC3(&bdev_parts, cmdline)) {
			cmdline = NULL;
			return -1;
		}
		cmdline = NULL;
	}

	if (!bdev_parts)
		return 0;

	FUNC0(state->bdev, bdev);
	parts = FUNC1(bdev_parts, bdev);
	if (!parts)
		return 0;

	disk_size = FUNC6(state->bdev->bd_disk) << 9;

	FUNC4(parts, disk_size, 1, add_part, (void *)state);
	FUNC5(1, state);

	FUNC7(state->pp_buf, "\n", PAGE_SIZE);

	return 1;
}