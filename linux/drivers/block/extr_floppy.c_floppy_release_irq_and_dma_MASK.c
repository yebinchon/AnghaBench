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
struct TYPE_2__ {int address; } ;

/* Variables and functions */
 TYPE_1__* FDCS ; 
 int N_FDC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int buffer_max ; 
 int buffer_min ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  fd_timeout ; 
 int /*<<< orphan*/  fd_timer ; 
 int fdc ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * floppy_track_buffer ; 
 int /*<<< orphan*/  floppy_work ; 
 scalar_t__ irqdma_allocated ; 
 int max_buffer_sectors ; 
 scalar_t__ motor_off_timer ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  timeout_message ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  usage_count ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(void)
{
	int old_fdc;
#ifndef __sparc__
	int drive;
#endif
	long tmpsize;
	unsigned long tmpaddr;

	if (!FUNC0(&usage_count))
		return;

	if (irqdma_allocated) {
		FUNC2();
		FUNC4();
		FUNC5();
		irqdma_allocated = 0;
	}
	FUNC8(0, ~0, 8);
#if N_FDC > 1
	set_dor(1, ~8, 0);
#endif

	if (floppy_track_buffer && max_buffer_sectors) {
		tmpsize = max_buffer_sectors * 1024;
		tmpaddr = (unsigned long)floppy_track_buffer;
		floppy_track_buffer = NULL;
		max_buffer_sectors = 0;
		buffer_min = buffer_max = -1;
		FUNC3(tmpaddr, tmpsize);
	}
#ifndef __sparc__
	for (drive = 0; drive < N_FDC * 4; drive++)
		if (FUNC9(motor_off_timer + drive))
			FUNC7("motor off timer %d still active\n", drive);
#endif

	if (FUNC1(&fd_timeout))
		FUNC7("floppy timer still active:%s\n", timeout_message);
	if (FUNC1(&fd_timer))
		FUNC7("auxiliary floppy timer still active\n");
	if (FUNC10(&floppy_work))
		FUNC7("work still pending\n");
	old_fdc = fdc;
	for (fdc = 0; fdc < N_FDC; fdc++)
		if (FDCS->address != -1)
			FUNC6(fdc);
	fdc = old_fdc;
}