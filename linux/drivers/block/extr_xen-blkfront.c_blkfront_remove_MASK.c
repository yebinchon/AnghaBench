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
struct xenbus_device {int /*<<< orphan*/  nodename; int /*<<< orphan*/  dev; } ;
struct gendisk {struct blkfront_info* private_data; } ;
struct block_device {int /*<<< orphan*/  bd_mutex; int /*<<< orphan*/  bd_openers; } ;
struct blkfront_info {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * xbdev; struct gendisk* gd; } ;

/* Variables and functions */
 struct block_device* FUNC0 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  blkfront_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct blkfront_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct blkfront_info* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC7 (struct blkfront_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct blkfront_info*) ; 

__attribute__((used)) static int FUNC11(struct xenbus_device *xbdev)
{
	struct blkfront_info *info = FUNC4(&xbdev->dev);
	struct block_device *bdev = NULL;
	struct gendisk *disk;

	FUNC3(&xbdev->dev, "%s removed", xbdev->nodename);

	if (!info)
		return 0;

	FUNC2(info, 0);

	FUNC8(&info->mutex);

	disk = info->gd;
	if (disk)
		bdev = FUNC0(disk, 0);

	info->xbdev = NULL;
	FUNC9(&info->mutex);

	if (!bdev) {
		FUNC8(&blkfront_mutex);
		FUNC7(info);
		FUNC9(&blkfront_mutex);
		return 0;
	}

	/*
	 * The xbdev was removed before we reached the Closed
	 * state. See if it's safe to remove the disk. If the bdev
	 * isn't closed yet, we let release take care of it.
	 */

	FUNC8(&bdev->bd_mutex);
	info = disk->private_data;

	FUNC5(FUNC6(disk),
		 "%s was hot-unplugged, %d stale handles\n",
		 xbdev->nodename, bdev->bd_openers);

	if (info && !bdev->bd_openers) {
		FUNC10(info);
		disk->private_data = NULL;
		FUNC8(&blkfront_mutex);
		FUNC7(info);
		FUNC9(&blkfront_mutex);
	}

	FUNC9(&bdev->bd_mutex);
	FUNC1(bdev);

	return 0;
}