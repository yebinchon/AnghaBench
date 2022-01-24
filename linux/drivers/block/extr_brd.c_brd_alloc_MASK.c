#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct gendisk {int first_minor; int /*<<< orphan*/  disk_name; int /*<<< orphan*/  flags; struct brd_device* private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  major; } ;
struct brd_device {int brd_number; TYPE_2__* brd_queue; struct gendisk* brd_disk; int /*<<< orphan*/  brd_pages; int /*<<< orphan*/  brd_lock; } ;
struct TYPE_10__ {TYPE_1__* backing_dev_info; } ;
struct TYPE_9__ {int /*<<< orphan*/  capabilities; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDI_CAP_SYNCHRONOUS_IO ; 
 int /*<<< orphan*/  GENHD_FL_EXT_DEVT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  QUEUE_FLAG_ADD_RANDOM ; 
 int /*<<< orphan*/  QUEUE_FLAG_NONROT ; 
 int /*<<< orphan*/  RAMDISK_MAJOR ; 
 struct gendisk* FUNC1 (int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  brd_fops ; 
 int /*<<< orphan*/  brd_make_request ; 
 int /*<<< orphan*/  FUNC9 (struct brd_device*) ; 
 struct brd_device* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int max_part ; 
 int rd_size ; 
 int /*<<< orphan*/  FUNC11 (struct gendisk*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static struct brd_device *FUNC14(int i)
{
	struct brd_device *brd;
	struct gendisk *disk;

	brd = FUNC10(sizeof(*brd), GFP_KERNEL);
	if (!brd)
		goto out;
	brd->brd_number		= i;
	FUNC12(&brd->brd_lock);
	FUNC0(&brd->brd_pages, GFP_ATOMIC);

	brd->brd_queue = FUNC2(GFP_KERNEL);
	if (!brd->brd_queue)
		goto out_free_dev;

	FUNC6(brd->brd_queue, brd_make_request);
	FUNC7(brd->brd_queue, 1024);

	/* This is so fdisk will align partitions on 4k, because of
	 * direct_access API needing 4k alignment, returning a PFN
	 * (This is only a problem on very small devices <= 4M,
	 *  otherwise fdisk will align on 1M. Regardless this call
	 *  is harmless)
	 */
	FUNC8(brd->brd_queue, PAGE_SIZE);
	disk = brd->brd_disk = FUNC1(max_part);
	if (!disk)
		goto out_free_queue;
	disk->major		= RAMDISK_MAJOR;
	disk->first_minor	= i * max_part;
	disk->fops		= &brd_fops;
	disk->private_data	= brd;
	disk->flags		= GENHD_FL_EXT_DEVT;
	FUNC13(disk->disk_name, "ram%d", i);
	FUNC11(disk, rd_size * 2);
	brd->brd_queue->backing_dev_info->capabilities |= BDI_CAP_SYNCHRONOUS_IO;

	/* Tell the block layer that this is not a rotational device */
	FUNC5(QUEUE_FLAG_NONROT, brd->brd_queue);
	FUNC4(QUEUE_FLAG_ADD_RANDOM, brd->brd_queue);

	return brd;

out_free_queue:
	FUNC3(brd->brd_queue);
out_free_dev:
	FUNC9(brd);
out:
	return NULL;
}