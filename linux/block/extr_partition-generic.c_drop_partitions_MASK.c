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
struct hd_struct {int /*<<< orphan*/  partno; } ;
struct gendisk {int dummy; } ;
struct disk_part_iter {int dummy; } ;
struct block_device {scalar_t__ bd_super; scalar_t__ bd_part_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISK_PITER_INCL_EMPTY ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct disk_part_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct disk_part_iter*,struct gendisk*,int /*<<< orphan*/ ) ; 
 struct hd_struct* FUNC3 (struct disk_part_iter*) ; 
 int FUNC4 (struct gendisk*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gendisk *disk, struct block_device *bdev)
{
	struct disk_part_iter piter;
	struct hd_struct *part;
	int res;

	if (bdev->bd_part_count || bdev->bd_super)
		return -EBUSY;
	res = FUNC4(disk, 0);
	if (res)
		return res;

	FUNC2(&piter, disk, DISK_PITER_INCL_EMPTY);
	while ((part = FUNC3(&piter)))
		FUNC0(disk, part->partno);
	FUNC1(&piter);

	return 0;
}