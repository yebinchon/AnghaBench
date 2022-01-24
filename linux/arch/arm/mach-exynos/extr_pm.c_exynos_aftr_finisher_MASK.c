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

/* Variables and functions */
 scalar_t__ ARM_CPU_PART_CORTEX_A9 ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FW_DO_IDLE_AFTR ; 
 int /*<<< orphan*/  S5P_CHECK_AFTR ; 
 int /*<<< orphan*/  SYS_AFTR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  do_idle ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static int FUNC8(unsigned long flags)
{
	int ret;

	FUNC4(FUNC7() ? 0x40003ffe : 0x0000ff3e);
	/* Set value of power down register for aftr mode */
	FUNC5(SYS_AFTR);

	ret = FUNC0(do_idle, FW_DO_IDLE_AFTR);
	if (ret == -ENOSYS) {
		if (FUNC6() == ARM_CPU_PART_CORTEX_A9)
			FUNC2();
		FUNC3(S5P_CHECK_AFTR);
		FUNC1();
	}

	return 1;
}