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
#define  PM_SUSPEND_MEM 129 
#define  PM_SUSPEND_STANDBY 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(suspend_state_t state)
{
	switch (state) {
	case PM_SUSPEND_STANDBY:
		FUNC0();
		break;
	case PM_SUSPEND_MEM:
		FUNC2("Entering suspend to RAM. Only special wake-up sources will resume the system\n");
		return FUNC1();
	default:
		return -EINVAL;
	}
	return 0;
}