#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct hd_struct {int /*<<< orphan*/  partno; } ;
struct TYPE_9__ {scalar_t__ stamp; int /*<<< orphan*/  holder_dir; } ;
struct gendisk {int flags; TYPE_3__ part0; int /*<<< orphan*/  slave_dir; int /*<<< orphan*/  minors; TYPE_1__* queue; int /*<<< orphan*/  lookup_sem; } ;
struct disk_part_iter {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_7__ {int /*<<< orphan*/  backing_dev_info; } ;

/* Variables and functions */
 int DISK_PITER_INCL_EMPTY ; 
 int DISK_PITER_REVERSE ; 
 int GENHD_FL_HIDDEN ; 
 int GENHD_FL_UP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * block_depr ; 
 int /*<<< orphan*/  FUNC7 (struct gendisk*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC11 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC12 (struct disk_part_iter*) ; 
 int /*<<< orphan*/  FUNC13 (struct disk_part_iter*,struct gendisk*,int) ; 
 struct hd_struct* FUNC14 (struct disk_part_iter*) ; 
 TYPE_2__* FUNC15 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysfs_deprecated ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

void FUNC25(struct gendisk *disk)
{
	struct disk_part_iter piter;
	struct hd_struct *part;

	FUNC3(disk);
	FUNC10(disk);

	/*
	 * Block lookups of the disk until all bdevs are unhashed and the
	 * disk is marked as dead (GENHD_FL_UP cleared).
	 */
	FUNC16(&disk->lookup_sem);
	/* invalidate stuff */
	FUNC13(&piter, disk,
			     DISK_PITER_INCL_EMPTY | DISK_PITER_REVERSE);
	while ((part = FUNC14(&piter))) {
		FUNC17(disk, part->partno);
		FUNC1(FUNC19(part));
		FUNC7(disk, part->partno);
	}
	FUNC12(&piter);

	FUNC17(disk, 0);
	FUNC1(FUNC11(disk));
	FUNC22(disk, 0);
	disk->flags &= ~GENHD_FL_UP;
	FUNC24(&disk->lookup_sem);

	if (!(disk->flags & GENHD_FL_HIDDEN))
		FUNC23(&FUNC15(disk)->kobj, "bdi");
	if (disk->queue) {
		/*
		 * Unregister bdi before releasing device numbers (as they can
		 * get reused and we'd get clashes in sysfs).
		 */
		if (!(disk->flags & GENHD_FL_HIDDEN))
			FUNC2(disk->queue->backing_dev_info);
		FUNC5(disk);
	} else {
		FUNC0(1);
	}

	if (!(disk->flags & GENHD_FL_HIDDEN))
		FUNC6(FUNC11(disk), disk->minors);
	/*
	 * Remove gendisk pointer from idr so that it cannot be looked up
	 * while RCU period before freeing gendisk is running to prevent
	 * use-after-free issues. Note that the device number stays
	 * "in-use" until we really free the gendisk.
	 */
	FUNC4(FUNC11(disk));

	FUNC18(disk->part0.holder_dir);
	FUNC18(disk->slave_dir);

	FUNC20(&disk->part0, 0);
	disk->part0.stamp = 0;
	if (!sysfs_deprecated)
		FUNC23(block_depr, FUNC8(FUNC15(disk)));
	FUNC21(FUNC15(disk), false);
	FUNC9(FUNC15(disk));
}