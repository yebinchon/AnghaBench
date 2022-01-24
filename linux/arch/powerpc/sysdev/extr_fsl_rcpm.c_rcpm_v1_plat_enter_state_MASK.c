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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  powmgtcsr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
#define  PLAT_PM_SLEEP 128 
 int RCPM_POWMGTCSR_SLP ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 TYPE_1__* rcpm_v1_regs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int,int,int) ; 

__attribute__((used)) static int FUNC5(int state)
{
	u32 *pmcsr_reg = &rcpm_v1_regs->powmgtcsr;
	int ret = 0;
	int result;

	switch (state) {
	case PLAT_PM_SLEEP:
		FUNC3(pmcsr_reg, RCPM_POWMGTCSR_SLP);

		/* Upon resume, wait for RCPM_POWMGTCSR_SLP bit to be clear. */
		result = FUNC4(
		  !(FUNC0(pmcsr_reg) & RCPM_POWMGTCSR_SLP), 10000, 10);
		if (!result) {
			FUNC1("timeout waiting for SLP bit to be cleared\n");
			ret = -ETIMEDOUT;
		}
		break;
	default:
		FUNC2("Unknown platform PM state (%d)", state);
		ret = -EINVAL;
	}

	return ret;
}