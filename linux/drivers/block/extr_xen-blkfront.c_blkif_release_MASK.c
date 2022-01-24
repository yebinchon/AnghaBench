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
struct xenbus_device {scalar_t__ state; } ;
struct gendisk {struct blkfront_info* private_data; int /*<<< orphan*/  disk_name; } ;
struct block_device {int /*<<< orphan*/  bd_disk; scalar_t__ bd_openers; } ;
struct blkfront_info {int /*<<< orphan*/  mutex; struct xenbus_device* xbdev; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ XenbusStateClosing ; 
 struct block_device* FUNC1 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct block_device*) ; 
 int /*<<< orphan*/  blkfront_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct blkfront_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct xenbus_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct blkfront_info*) ; 

__attribute__((used)) static void FUNC10(struct gendisk *disk, fmode_t mode)
{
	struct blkfront_info *info = disk->private_data;
	struct block_device *bdev;
	struct xenbus_device *xbdev;

	FUNC6(&blkfront_mutex);

	bdev = FUNC1(disk, 0);

	if (!bdev) {
		FUNC0(1, "Block device %s yanked out from us!\n", disk->disk_name);
		goto out_mutex;
	}
	if (bdev->bd_openers)
		goto out;

	/*
	 * Check if we have been instructed to close. We will have
	 * deferred this request, because the bdev was still open.
	 */

	FUNC6(&info->mutex);
	xbdev = info->xbdev;

	if (xbdev && xbdev->state == XenbusStateClosing) {
		/* pending switch to state closed */
		FUNC3(FUNC4(bdev->bd_disk), "releasing disk\n");
		FUNC9(info);
		FUNC8(info->xbdev);
 	}

	FUNC7(&info->mutex);

	if (!xbdev) {
		/* sudden device removal */
		FUNC3(FUNC4(bdev->bd_disk), "releasing disk\n");
		FUNC9(info);
		disk->private_data = NULL;
		FUNC5(info);
	}

out:
	FUNC2(bdev);
out_mutex:
	FUNC7(&blkfront_mutex);
}