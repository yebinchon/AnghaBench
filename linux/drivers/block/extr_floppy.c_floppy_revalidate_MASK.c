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
struct gendisk {scalar_t__ private_data; } ;
struct TYPE_2__ {size_t fd_device; int /*<<< orphan*/  generation; int /*<<< orphan*/  flags; scalar_t__ maxtrack; scalar_t__ maxblock; } ;

/* Variables and functions */
 int EFAULT ; 
 int FD_DISK_CHANGED_BIT ; 
 int /*<<< orphan*/  FD_RAW_NEED_DISK ; 
 int FD_VERIFY_BIT ; 
 TYPE_1__* UDRS ; 
 scalar_t__ FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int buffer_drive ; 
 int buffer_track ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  fake_change ; 
 int /*<<< orphan*/ * floppy_sizes ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/ * opened_bdev ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct gendisk*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usage_count ; 

__attribute__((used)) static int FUNC10(struct gendisk *disk)
{
	int drive = (long)disk->private_data;
	int cf;
	int res = 0;

	if (FUNC9(FD_DISK_CHANGED_BIT, &UDRS->flags) ||
	    FUNC9(FD_VERIFY_BIT, &UDRS->flags) ||
	    FUNC9(drive, &fake_change) ||
	    FUNC4(drive)) {
		if (FUNC0(FUNC2(&usage_count) == 0,
			 "VFS: revalidate called on non-open device.\n"))
			return -EFAULT;

		res = FUNC5(drive);
		if (res)
			return res;
		cf = (FUNC9(FD_DISK_CHANGED_BIT, &UDRS->flags) ||
		      FUNC9(FD_VERIFY_BIT, &UDRS->flags));
		if (!(cf || FUNC9(drive, &fake_change) || FUNC4(drive))) {
			FUNC7();	/*already done by another thread */
			return 0;
		}
		UDRS->maxblock = 0;
		UDRS->maxtrack = 0;
		if (buffer_drive == drive)
			buffer_track = -1;
		FUNC3(drive, &fake_change);
		FUNC3(FD_DISK_CHANGED_BIT, &UDRS->flags);
		if (cf)
			UDRS->generation++;
		if (FUNC4(drive)) {
			/* auto-sensing */
			res = FUNC1(opened_bdev[drive], drive);
		} else {
			if (cf)
				FUNC6(false, FD_RAW_NEED_DISK);
			FUNC7();
		}
	}
	FUNC8(disk, floppy_sizes[UDRS->fd_device]);
	return res;
}