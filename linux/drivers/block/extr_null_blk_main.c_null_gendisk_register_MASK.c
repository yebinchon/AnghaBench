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
struct nullb {TYPE_1__* dev; int /*<<< orphan*/  disk_name; int /*<<< orphan*/  q; int /*<<< orphan*/  index; struct gendisk* disk; } ;
struct gendisk {int flags; int /*<<< orphan*/  disk_name; int /*<<< orphan*/  queue; struct nullb* private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  first_minor; int /*<<< orphan*/  major; } ;
typedef  int sector_t ;
struct TYPE_2__ {scalar_t__ zoned; scalar_t__ size; int /*<<< orphan*/  home_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISK_NAME_LEN ; 
 int ENOMEM ; 
 int GENHD_FL_EXT_DEVT ; 
 int GENHD_FL_SUPPRESS_PARTITION_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct gendisk*) ; 
 struct gendisk* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gendisk*) ; 
 int /*<<< orphan*/  null_fops ; 
 int /*<<< orphan*/  null_major ; 
 int /*<<< orphan*/  FUNC3 (struct gendisk*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct nullb *nullb)
{
	struct gendisk *disk;
	sector_t size;

	disk = nullb->disk = FUNC1(1, nullb->dev->home_node);
	if (!disk)
		return -ENOMEM;
	size = (sector_t)nullb->dev->size * 1024 * 1024ULL;
	FUNC3(disk, size >> 9);

	disk->flags |= GENHD_FL_EXT_DEVT | GENHD_FL_SUPPRESS_PARTITION_INFO;
	disk->major		= null_major;
	disk->first_minor	= nullb->index;
	disk->fops		= &null_fops;
	disk->private_data	= nullb;
	disk->queue		= nullb->q;
	FUNC4(disk->disk_name, nullb->disk_name, DISK_NAME_LEN);

	if (nullb->dev->zoned) {
		int ret = FUNC2(disk);

		if (ret != 0)
			return ret;
	}

	FUNC0(disk);
	return 0;
}