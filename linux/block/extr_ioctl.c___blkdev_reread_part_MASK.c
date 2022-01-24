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
struct gendisk {int dummy; } ;
struct block_device {int /*<<< orphan*/  bd_mutex; struct block_device* bd_contains; struct gendisk* bd_disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct gendisk*,struct block_device*) ; 

int FUNC4(struct block_device *bdev)
{
	struct gendisk *disk = bdev->bd_disk;

	if (!FUNC1(disk) || bdev != bdev->bd_contains)
		return -EINVAL;
	if (!FUNC0(CAP_SYS_ADMIN))
		return -EACCES;

	FUNC2(&bdev->bd_mutex);

	return FUNC3(disk, bdev);
}