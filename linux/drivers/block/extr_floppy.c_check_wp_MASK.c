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
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int reset; } ;

/* Variables and functions */
 TYPE_3__* DP ; 
 TYPE_2__* DRS ; 
 TYPE_1__* FDCS ; 
 int /*<<< orphan*/  FD_DISK_WRITABLE_BIT ; 
 int /*<<< orphan*/  FD_GETSTATUS ; 
 int /*<<< orphan*/  FD_NEED_TWADDLE_BIT ; 
 int /*<<< orphan*/  FD_VERIFY_BIT ; 
 int ST3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current_drive ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void)
{
	if (FUNC6(FD_VERIFY_BIT, &DRS->flags)) {
					/* check write protection */
		FUNC3(FD_GETSTATUS);
		FUNC3(FUNC0(current_drive));
		if (FUNC4() != 1) {
			FDCS->reset = 1;
			return;
		}
		FUNC1(FD_VERIFY_BIT, &DRS->flags);
		FUNC1(FD_NEED_TWADDLE_BIT, &DRS->flags);
		FUNC2(DP->flags,
			  "checking whether disk is write protected\n");
		FUNC2(DP->flags, "wp=%x\n", ST3 & 0x40);
		if (!(ST3 & 0x40))
			FUNC5(FD_DISK_WRITABLE_BIT, &DRS->flags);
		else
			FUNC1(FD_DISK_WRITABLE_BIT, &DRS->flags);
	}
}