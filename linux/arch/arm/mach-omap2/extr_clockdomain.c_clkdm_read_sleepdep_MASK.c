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
struct clockdomain {int /*<<< orphan*/  name; int /*<<< orphan*/  sleepdep_srcs; } ;
struct clkdm_dep {int dummy; } ;
struct TYPE_2__ {int (* clkdm_read_sleepdep ) (struct clockdomain*,struct clockdomain*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct clkdm_dep*) ; 
 int FUNC1 (struct clkdm_dep*) ; 
 struct clkdm_dep* FUNC2 (struct clockdomain*,int /*<<< orphan*/ ) ; 
 TYPE_1__* arch_clkdm ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct clockdomain*,struct clockdomain*) ; 

int FUNC5(struct clockdomain *clkdm1, struct clockdomain *clkdm2)
{
	struct clkdm_dep *cd;
	int ret = 0;

	if (!clkdm1 || !clkdm2)
		return -EINVAL;

	cd = FUNC2(clkdm2, clkdm1->sleepdep_srcs);
	if (FUNC0(cd))
		ret = FUNC1(cd);

	if (!arch_clkdm || !arch_clkdm->clkdm_read_sleepdep)
		ret = -EINVAL;

	if (ret) {
		FUNC3("clockdomain: hardware cannot set/clear sleep dependency affecting %s from %s\n",
			 clkdm1->name, clkdm2->name);
		return ret;
	}

	/* XXX It's faster to return the sleepdep_usecount */
	return arch_clkdm->clkdm_read_sleepdep(clkdm1, clkdm2);
}