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
struct TYPE_6__ {int /*<<< orphan*/  select_delay; int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {scalar_t__ reset; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  length; int /*<<< orphan*/  kernel_data; } ;

/* Variables and functions */
 TYPE_3__* DP ; 
 TYPE_2__* FDCS ; 
 int FD_RAW_NEED_DISK ; 
 int FD_RAW_NEED_SEEK ; 
 int FD_RAW_NO_MOTOR ; 
 int FD_RAW_READ ; 
 int FD_RAW_WRITE ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  current_drive ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__* raw_cmd ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (void (*) ()) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void FUNC13(void)
{
	if (FDCS->reset) {
		FUNC8();
		return;
	}
	if (FUNC11(floppy_ready))
		return;
	if (FUNC4())
		return;

	FUNC1(DP->flags, "calling disk change from floppy_ready\n");
	if (!(raw_cmd->flags & FD_RAW_NO_MOTOR) &&
	    FUNC2(current_drive) && !DP->select_delay)
		FUNC12();	/* this clears the dcl on certain
				 * drive/controller combinations */

#ifdef fd_chose_dma_mode
	if ((raw_cmd->flags & FD_RAW_READ) || (raw_cmd->flags & FD_RAW_WRITE)) {
		unsigned long flags = claim_dma_lock();
		fd_chose_dma_mode(raw_cmd->kernel_data, raw_cmd->length);
		release_dma_lock(flags);
	}
#endif

	if (raw_cmd->flags & (FD_RAW_NEED_SEEK | FD_RAW_NEED_DISK)) {
		FUNC6();
		FUNC5();	/* must be done here because of hut, hlt ... */
		FUNC9();
	} else {
		if ((raw_cmd->flags & FD_RAW_READ) ||
		    (raw_cmd->flags & FD_RAW_WRITE))
			FUNC5();
		FUNC10();
	}
}