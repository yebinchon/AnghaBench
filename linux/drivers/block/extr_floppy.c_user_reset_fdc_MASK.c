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
struct TYPE_2__ {int reset; } ;

/* Variables and functions */
 int EINTR ; 
 TYPE_1__* FDCS ; 
 int FD_RESET_ALWAYS ; 
 int /*<<< orphan*/ * cont ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  reset_cont ; 
 int /*<<< orphan*/  reset_fdc ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(int drive, int arg, bool interruptible)
{
	int ret;

	if (FUNC0(drive))
		return -EINTR;

	if (arg == FD_RESET_ALWAYS)
		FDCS->reset = 1;
	if (FDCS->reset) {
		cont = &reset_cont;
		ret = FUNC2(reset_fdc, interruptible);
		if (ret == -EINTR)
			return -EINTR;
	}
	FUNC1();
	return 0;
}