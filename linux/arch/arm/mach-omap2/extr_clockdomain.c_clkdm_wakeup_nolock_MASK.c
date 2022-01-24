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
struct clockdomain {int flags; TYPE_1__ pwrdm; int /*<<< orphan*/  _flags; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int (* clkdm_wakeup ) (struct clockdomain*) ;} ;

/* Variables and functions */
 int CLKDM_CAN_FORCE_WAKEUP ; 
 int EINVAL ; 
 int /*<<< orphan*/  _CLKDM_FLAG_HWSUP_ENABLED ; 
 TYPE_2__* arch_clkdm ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct clockdomain*) ; 

int FUNC3(struct clockdomain *clkdm)
{
	int ret;

	if (!clkdm)
		return -EINVAL;

	if (!(clkdm->flags & CLKDM_CAN_FORCE_WAKEUP)) {
		FUNC0("clockdomain: %s does not support forcing wakeup via software\n",
			 clkdm->name);
		return -EINVAL;
	}

	if (!arch_clkdm || !arch_clkdm->clkdm_wakeup)
		return -EINVAL;

	FUNC0("clockdomain: forcing wakeup on %s\n", clkdm->name);

	clkdm->_flags &= ~_CLKDM_FLAG_HWSUP_ENABLED;
	ret = arch_clkdm->clkdm_wakeup(clkdm);
	ret |= FUNC1(clkdm->pwrdm.ptr);

	return ret;
}