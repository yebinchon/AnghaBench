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
struct TYPE_3__ {int /*<<< orphan*/  ptr; } ;
struct clockdomain {int flags; TYPE_1__ pwrdm; int /*<<< orphan*/  _flags; int /*<<< orphan*/  name; int /*<<< orphan*/  forcewake_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* clkdm_deny_idle ) (struct clockdomain*) ;} ;

/* Variables and functions */
 int CLKDM_CAN_DISABLE_AUTO ; 
 int CLKDM_CAN_FORCE_WAKEUP ; 
 int CLKDM_MISSING_IDLE_REPORTING ; 
 int /*<<< orphan*/  _CLKDM_FLAG_HWSUP_ENABLED ; 
 TYPE_2__* arch_clkdm ; 
 int /*<<< orphan*/  FUNC0 (struct clockdomain*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct clockdomain*) ; 

void FUNC4(struct clockdomain *clkdm)
{
	if (!clkdm)
		return;

	if (clkdm->forcewake_count++)
		return;

	if (clkdm->flags & CLKDM_CAN_FORCE_WAKEUP)
		FUNC0(clkdm);

	if (!(clkdm->flags & CLKDM_CAN_DISABLE_AUTO))
		return;

	if (clkdm->flags & CLKDM_MISSING_IDLE_REPORTING)
		return;

	if (!arch_clkdm || !arch_clkdm->clkdm_deny_idle)
		return;

	FUNC1("clockdomain: disabling automatic idle transitions for %s\n",
		 clkdm->name);

	clkdm->_flags &= ~_CLKDM_FLAG_HWSUP_ENABLED;
	arch_clkdm->clkdm_deny_idle(clkdm);
	FUNC2(clkdm->pwrdm.ptr);
}