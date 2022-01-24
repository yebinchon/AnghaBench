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
struct omap_hwmod {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ptr; } ;
struct clockdomain {scalar_t__ usecount; int /*<<< orphan*/  name; TYPE_1__ pwrdm; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* clkdm_clk_disable ) (struct clockdomain*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* arch_clkdm ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct clockdomain*) ; 

int FUNC8(struct clockdomain *clkdm, struct omap_hwmod *oh)
{
	/* The clkdm attribute does not exist yet prior OMAP4 */
	if (FUNC1() || FUNC2())
		return 0;

	/*
	 * XXX Rewrite this code to maintain a list of enabled
	 * downstream hwmods for debugging purposes?
	 */

	if (!clkdm || !oh || !arch_clkdm || !arch_clkdm->clkdm_clk_disable)
		return -EINVAL;

	FUNC4(clkdm->pwrdm.ptr);

	if (clkdm->usecount == 0) {
		FUNC6(clkdm->pwrdm.ptr);
		FUNC0(1); /* underflow */
		return -ERANGE;
	}

	clkdm->usecount--;
	if (clkdm->usecount > 0) {
		FUNC6(clkdm->pwrdm.ptr);
		return 0;
	}

	arch_clkdm->clkdm_clk_disable(clkdm);
	FUNC5(clkdm->pwrdm.ptr);
	FUNC6(clkdm->pwrdm.ptr);

	FUNC3("clockdomain: %s: disabled\n", clkdm->name);

	return 0;
}