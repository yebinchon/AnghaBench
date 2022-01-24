#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int dor; } ;
struct TYPE_5__ {int flags; scalar_t__ select_delay; } ;
struct TYPE_4__ {int flags; scalar_t__ keep_data; int last_checked; scalar_t__ maxblock; scalar_t__ select_date; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int) ; 
 TYPE_3__* FDCS ; 
 int FD_BROKEN_DCL ; 
 int /*<<< orphan*/  FD_DIR ; 
 int /*<<< orphan*/  FD_DISK_CHANGED_BIT ; 
 int /*<<< orphan*/  FD_DISK_NEWCHANGE_BIT ; 
 int /*<<< orphan*/  FD_VERIFY_BIT ; 
 int FTD_MSG ; 
 int MAX_DISK_SIZE ; 
 size_t FUNC2 (int) ; 
 TYPE_2__* UDP ; 
 TYPE_1__* UDRS ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ ** current_type ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int* floppy_sizes ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC10(int drive)
{
	int fdc = FUNC1(drive);

	if (FUNC9(jiffies, UDRS->select_date + UDP->select_delay))
		FUNC0("WARNING disk change called early\n");
	if (!(FDCS->dor & (0x10 << FUNC3(drive))) ||
	    (FDCS->dor & 3) != FUNC3(drive) || fdc != FUNC1(drive)) {
		FUNC0("probing disk change on unselected drive\n");
		FUNC0("drive=%d fdc=%d dor=%x\n", drive, FUNC1(drive),
		       (unsigned int)FDCS->dor);
	}

	FUNC5(UDP->flags,
		  "checking disk change line for drive %d\n", drive);
	FUNC5(UDP->flags, "jiffies=%lu\n", jiffies);
	FUNC5(UDP->flags, "disk change line=%x\n", FUNC6(FD_DIR) & 0x80);
	FUNC5(UDP->flags, "flags=%lx\n", UDRS->flags);

	if (UDP->flags & FD_BROKEN_DCL)
		return FUNC8(FD_DISK_CHANGED_BIT, &UDRS->flags);
	if ((FUNC6(FD_DIR) ^ UDP->flags) & 0x80) {
		FUNC7(FD_VERIFY_BIT, &UDRS->flags);
					/* verify write protection */

		if (UDRS->maxblock)	/* mark it changed */
			FUNC7(FD_DISK_CHANGED_BIT, &UDRS->flags);

		/* invalidate its geometry */
		if (UDRS->keep_data >= 0) {
			if ((UDP->flags & FTD_MSG) &&
			    current_type[drive] != NULL)
				FUNC0("Disk type is undefined after disk change\n");
			current_type[drive] = NULL;
			floppy_sizes[FUNC2(drive)] = MAX_DISK_SIZE << 1;
		}

		return 1;
	} else {
		UDRS->last_checked = jiffies;
		FUNC4(FD_DISK_NEWCHANGE_BIT, &UDRS->flags);
	}
	return 0;
}