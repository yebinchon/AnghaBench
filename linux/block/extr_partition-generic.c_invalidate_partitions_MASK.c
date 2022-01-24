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
struct gendisk {int dummy; } ;
struct block_device {scalar_t__ bd_invalidated; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (struct gendisk*,struct block_device*,int) ; 
 TYPE_1__* FUNC1 (struct gendisk*) ; 
 int FUNC2 (struct gendisk*,struct block_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gendisk*,int /*<<< orphan*/ ) ; 

int FUNC5(struct gendisk *disk, struct block_device *bdev)
{
	int res;

	if (!bdev->bd_invalidated)
		return 0;

	res = FUNC2(disk, bdev);
	if (res)
		return res;

	FUNC4(disk, 0);
	FUNC0(disk, bdev, false);
	bdev->bd_invalidated = 0;
	/* tell userspace that the media / partition table may have changed */
	FUNC3(&FUNC1(disk)->kobj, KOBJ_CHANGE);

	return 0;
}