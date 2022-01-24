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
typedef  int suspend_state_t ;

/* Variables and functions */
 int EINVAL ; 
#define  PM_SUSPEND_MEM 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  sirfsoc_finish_suspend ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(suspend_state_t state)
{
	switch (state) {
	case PM_SUSPEND_MEM:
		FUNC3();

		FUNC1();
		/* go zzz */
		FUNC0(0, sirfsoc_finish_suspend);
		FUNC2();
		break;
	default:
		return -EINVAL;
	}
	return 0;
}