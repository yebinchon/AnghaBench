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
struct gendisk {int /*<<< orphan*/  node_id; int /*<<< orphan*/  part_tbl; } ;
struct disk_part_tbl {int len; int /*<<< orphan*/ * part; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC1 (struct gendisk*,struct disk_part_tbl*) ; 
 struct disk_part_tbl* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  part ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct disk_part_tbl* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct disk_part_tbl*,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct gendisk *disk, int partno)
{
	struct disk_part_tbl *old_ptbl =
		FUNC4(disk->part_tbl, 1);
	struct disk_part_tbl *new_ptbl;
	int len = old_ptbl ? old_ptbl->len : 0;
	int i, target;

	/*
	 * check for int overflow, since we can get here from blkpg_ioctl()
	 * with a user passed 'partno'.
	 */
	target = partno + 1;
	if (target < 0)
		return -EINVAL;

	/* disk_max_parts() is zero during initialization, ignore if so */
	if (FUNC0(disk) && target > FUNC0(disk))
		return -EINVAL;

	if (target <= len)
		return 0;

	new_ptbl = FUNC2(FUNC5(new_ptbl, part, target), GFP_KERNEL,
				disk->node_id);
	if (!new_ptbl)
		return -ENOMEM;

	new_ptbl->len = target;

	for (i = 0; i < len; i++)
		FUNC3(new_ptbl->part[i], old_ptbl->part[i]);

	FUNC1(disk, new_ptbl);
	return 0;
}