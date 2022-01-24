#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* ptr; } ;
struct clockdomain {int flags; int /*<<< orphan*/  clktrctrl_mask; TYPE_2__ pwrdm; } ;
struct TYPE_3__ {int /*<<< orphan*/  prcm_offs; } ;

/* Variables and functions */
 int CLKDM_CAN_FORCE_WAKEUP ; 
 int CLKDM_MISSING_IDLE_REPORTING ; 
 int /*<<< orphan*/  FUNC0 (struct clockdomain*) ; 
 int /*<<< orphan*/  FUNC1 (struct clockdomain*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct clockdomain *clkdm)
{
	bool hwsup = false;

	if (!clkdm->clktrctrl_mask)
		return 0;

	/*
	 * The CLKDM_MISSING_IDLE_REPORTING flag documentation has
	 * more details on the unpleasant problem this is working
	 * around
	 */
	if ((clkdm->flags & CLKDM_MISSING_IDLE_REPORTING) &&
	    (clkdm->flags & CLKDM_CAN_FORCE_WAKEUP)) {
		FUNC1(clkdm);
		return 0;
	}

	hwsup = FUNC4(clkdm->pwrdm.ptr->prcm_offs,
					      clkdm->clktrctrl_mask);

	if (hwsup) {
		/* Disable HW transitions when we are changing deps */
		FUNC2(clkdm->pwrdm.ptr->prcm_offs,
						clkdm->clktrctrl_mask);
		FUNC0(clkdm);
		FUNC3(clkdm->pwrdm.ptr->prcm_offs,
					       clkdm->clktrctrl_mask);
	} else {
		if (clkdm->flags & CLKDM_CAN_FORCE_WAKEUP)
			FUNC1(clkdm);
	}

	return 0;
}