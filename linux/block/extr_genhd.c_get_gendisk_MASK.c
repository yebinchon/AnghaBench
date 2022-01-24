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
struct kobject {int dummy; } ;
struct hd_struct {int partno; } ;
struct gendisk {int flags; int /*<<< orphan*/  lookup_sem; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 scalar_t__ BLOCK_EXT_MAJOR ; 
 int GENHD_FL_HIDDEN ; 
 int GENHD_FL_UP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bdev_map ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct gendisk* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ext_devt_idr ; 
 int /*<<< orphan*/  ext_devt_lock ; 
 scalar_t__ FUNC5 (struct gendisk*) ; 
 struct hd_struct* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct kobject* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct kobject*) ; 
 struct gendisk* FUNC9 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

struct gendisk *FUNC15(dev_t devt, int *partno)
{
	struct gendisk *disk = NULL;

	if (FUNC0(devt) != BLOCK_EXT_MAJOR) {
		struct kobject *kobj;

		kobj = FUNC7(bdev_map, devt, partno);
		if (kobj)
			disk = FUNC3(FUNC8(kobj));
	} else {
		struct hd_struct *part;

		FUNC11(&ext_devt_lock);
		part = FUNC6(&ext_devt_idr, FUNC2(FUNC1(devt)));
		if (part && FUNC5(FUNC9(part))) {
			*partno = part->partno;
			disk = FUNC9(part);
		}
		FUNC12(&ext_devt_lock);
	}

	if (!disk)
		return NULL;

	/*
	 * Synchronize with del_gendisk() to not return disk that is being
	 * destroyed.
	 */
	FUNC4(&disk->lookup_sem);
	if (FUNC13((disk->flags & GENHD_FL_HIDDEN) ||
		     !(disk->flags & GENHD_FL_UP))) {
		FUNC14(&disk->lookup_sem);
		FUNC10(disk);
		disk = NULL;
	} else {
		FUNC14(&disk->lookup_sem);
	}
	return disk;
}