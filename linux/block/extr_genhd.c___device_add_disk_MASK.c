#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct gendisk {int flags; TYPE_1__* queue; scalar_t__ minors; scalar_t__ first_minor; scalar_t__ major; int /*<<< orphan*/  part0; } ;
struct device {int dummy; } ;
struct attribute_group {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_6__ {int /*<<< orphan*/  devt; } ;
struct TYPE_5__ {int /*<<< orphan*/  backing_dev_info; } ;

/* Variables and functions */
 int GENHD_FL_EXT_DEVT ; 
 int GENHD_FL_HIDDEN ; 
 int GENHD_FL_NO_PART_SCAN ; 
 int GENHD_FL_SUPPRESS_PARTITION_INFO ; 
 int GENHD_FL_UP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC8 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gendisk*) ; 
 int /*<<< orphan*/  FUNC10 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC11 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC12 (struct gendisk*) ; 
 TYPE_2__* FUNC13 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  exact_lock ; 
 int /*<<< orphan*/  exact_match ; 
 int /*<<< orphan*/  FUNC15 (struct device*,struct gendisk*,struct attribute_group const**) ; 

__attribute__((used)) static void FUNC16(struct device *parent, struct gendisk *disk,
			      const struct attribute_group **groups,
			      bool register_queue)
{
	dev_t devt;
	int retval;

	/*
	 * The disk queue should now be all set with enough information about
	 * the device for the elevator code to pick an adequate default
	 * elevator if one is needed, that is, for devices requesting queue
	 * registration.
	 */
	if (register_queue)
		FUNC14(disk->queue);

	/* minors == 0 indicates to use ext devt from part0 and should
	 * be accompanied with EXT_DEVT flag.  Make sure all
	 * parameters make sense.
	 */
	FUNC2(disk->minors && !(disk->major || disk->first_minor));
	FUNC2(!disk->minors &&
		!(disk->flags & (GENHD_FL_EXT_DEVT | GENHD_FL_HIDDEN)));

	disk->flags |= GENHD_FL_UP;

	retval = FUNC5(&disk->part0, &devt);
	if (retval) {
		FUNC2(1);
		return;
	}
	disk->major = FUNC0(devt);
	disk->first_minor = FUNC1(devt);

	FUNC11(disk);

	if (disk->flags & GENHD_FL_HIDDEN) {
		/*
		 * Don't let hidden disks show up in /proc/partitions,
		 * and don't bother scanning for partitions either.
		 */
		disk->flags |= GENHD_FL_SUPPRESS_PARTITION_INFO;
		disk->flags |= GENHD_FL_NO_PART_SCAN;
	} else {
		int ret;

		/* Register BDI before referencing it from bdev */
		FUNC13(disk)->devt = devt;
		ret = FUNC4(disk->queue->backing_dev_info,
						FUNC13(disk));
		FUNC2(ret);
		FUNC9(FUNC12(disk), disk->minors, NULL,
				    exact_match, exact_lock, disk);
	}
	FUNC15(parent, disk, groups);
	if (register_queue)
		FUNC8(disk);

	/*
	 * Take an extra ref on queue which will be put on disk_release()
	 * so that it sticks around as long as @disk is there.
	 */
	FUNC3(!FUNC6(disk->queue));

	FUNC10(disk);
	FUNC7(disk);
}