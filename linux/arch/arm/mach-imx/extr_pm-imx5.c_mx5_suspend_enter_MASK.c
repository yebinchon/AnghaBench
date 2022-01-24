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
 int /*<<< orphan*/  IMX5_DEFAULT_CPU_IDLE_STATE ; 
 scalar_t__ MXC_SRPG_EMPGC0_SRPGCR ; 
 scalar_t__ MXC_SRPG_EMPGC1_SRPGCR ; 
#define  PM_SUSPEND_MEM 129 
#define  PM_SUSPEND_STANDBY 128 
 int /*<<< orphan*/  STOP_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ gpc_base ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  suspend_ocram_base ; 

__attribute__((used)) static int FUNC6(suspend_state_t state)
{
	switch (state) {
	case PM_SUSPEND_MEM:
		FUNC5(STOP_POWER_OFF);
		break;
	case PM_SUSPEND_STANDBY:
		/* DEFAULT_IDLE_STATE already configured */
		break;
	default:
		return -EINVAL;
	}

	if (state == PM_SUSPEND_MEM) {
		FUNC4();
		FUNC1();

		/*clear the EMPGC0/1 bits */
		FUNC3(0, gpc_base + MXC_SRPG_EMPGC0_SRPGCR);
		FUNC3(0, gpc_base + MXC_SRPG_EMPGC1_SRPGCR);

		if (&imx5_suspend_in_ocram_fn)
			FUNC2(suspend_ocram_base);
		else
			FUNC0();

	} else {
		FUNC0();
	}

	/* return registers to default idle state */
	FUNC5(IMX5_DEFAULT_CPU_IDLE_STATE);
	return 0;
}