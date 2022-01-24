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
struct clockdomain {int flags; TYPE_1__ pwrdm; int /*<<< orphan*/  _flags; int /*<<< orphan*/  name; int /*<<< orphan*/  usecount; scalar_t__ forcewake_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* clkdm_allow_idle ) (struct clockdomain*) ;} ;

/* Variables and functions */
 int CLKDM_CAN_ENABLE_AUTO ; 
 int CLKDM_CAN_FORCE_SLEEP ; 
 int CLKDM_MISSING_IDLE_REPORTING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  _CLKDM_FLAG_HWSUP_ENABLED ; 
 TYPE_2__* arch_clkdm ; 
 int /*<<< orphan*/  FUNC1 (struct clockdomain*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct clockdomain*) ; 

void FUNC5(struct clockdomain *clkdm)
{
	if (!clkdm)
		return;

	if (!FUNC0(!clkdm->forcewake_count))
		clkdm->forcewake_count--;

	if (clkdm->forcewake_count)
		return;

	if (!clkdm->usecount && (clkdm->flags & CLKDM_CAN_FORCE_SLEEP))
		FUNC1(clkdm);

	if (!(clkdm->flags & CLKDM_CAN_ENABLE_AUTO))
		return;

	if (clkdm->flags & CLKDM_MISSING_IDLE_REPORTING)
		return;

	if (!arch_clkdm || !arch_clkdm->clkdm_allow_idle)
		return;

	FUNC2("clockdomain: enabling automatic idle transitions for %s\n",
		 clkdm->name);

	clkdm->_flags |= _CLKDM_FLAG_HWSUP_ENABLED;
	arch_clkdm->clkdm_allow_idle(clkdm);
	FUNC3(clkdm->pwrdm.ptr);
}