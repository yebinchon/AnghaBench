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
struct clockdomain {scalar_t__ usecount; TYPE_1__ pwrdm; int /*<<< orphan*/  name; } ;
struct clk {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* clkdm_clk_disable ) (struct clockdomain*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 TYPE_2__* arch_clkdm ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct clockdomain*) ; 

int FUNC7(struct clockdomain *clkdm, struct clk *clk)
{
	if (!clkdm || !clk || !arch_clkdm || !arch_clkdm->clkdm_clk_disable)
		return -EINVAL;

	FUNC3(clkdm->pwrdm.ptr);

	/* corner case: disabling unused clocks */
	if ((FUNC1(clk) == 0) && clkdm->usecount == 0)
		goto ccd_exit;

	if (clkdm->usecount == 0) {
		FUNC5(clkdm->pwrdm.ptr);
		FUNC0(1); /* underflow */
		return -ERANGE;
	}

	clkdm->usecount--;
	if (clkdm->usecount > 0) {
		FUNC5(clkdm->pwrdm.ptr);
		return 0;
	}

	arch_clkdm->clkdm_clk_disable(clkdm);
	FUNC4(clkdm->pwrdm.ptr);

	FUNC2("clockdomain: %s: disabled\n", clkdm->name);

ccd_exit:
	FUNC5(clkdm->pwrdm.ptr);

	return 0;
}