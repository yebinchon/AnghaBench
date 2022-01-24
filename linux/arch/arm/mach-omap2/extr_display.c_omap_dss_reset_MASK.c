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
struct omap_hwmod_opt_clk {scalar_t__ _clk; } ;
struct omap_hwmod {int opt_clks_cnt; struct omap_hwmod_opt_clk* opt_clks; TYPE_2__* class; } ;
struct TYPE_4__ {TYPE_1__* sysc; } ;
struct TYPE_3__ {int sysc_flags; int /*<<< orphan*/  syss_offs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSS_CONTROL ; 
 int /*<<< orphan*/  DSS_PLL_CONTROL ; 
 int /*<<< orphan*/  DSS_SDI_CONTROL ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int MAX_MODULE_SOFTRESET_WAIT ; 
 int SYSS_HAS_RESET_STATUS ; 
 int SYSS_RESETDONE_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct omap_hwmod*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,struct omap_hwmod*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int FUNC10(struct omap_hwmod *oh)
{
	struct omap_hwmod_opt_clk *oc;
	int c = 0;
	int i, r;

	if (!(oh->class->sysc->sysc_flags & SYSS_HAS_RESET_STATUS)) {
		FUNC8("dss_core: hwmod data doesn't contain reset data\n");
		return -EINVAL;
	}

	for (i = oh->opt_clks_cnt, oc = oh->opt_clks; i > 0; i--, oc++)
		if (oc->_clk)
			FUNC1(oc->_clk);

	FUNC3();

	/* clear SDI registers */
	if (FUNC2()) {
		FUNC5(0x0, oh, DSS_SDI_CONTROL);
		FUNC5(0x0, oh, DSS_PLL_CONTROL);
	}

	/*
	 * clear DSS_CONTROL register to switch DSS clock sources to
	 * PRCM clock, if any
	 */
	FUNC5(0x0, oh, DSS_CONTROL);

	FUNC6((FUNC4(oh, oh->class->sysc->syss_offs)
				& SYSS_RESETDONE_MASK),
			MAX_MODULE_SOFTRESET_WAIT, c);

	if (c == MAX_MODULE_SOFTRESET_WAIT)
		FUNC9("dss_core: waiting for reset to finish failed\n");
	else
		FUNC7("dss_core: softreset done\n");

	for (i = oh->opt_clks_cnt, oc = oh->opt_clks; i > 0; i--, oc++)
		if (oc->_clk)
			FUNC0(oc->_clk);

	r = (c == MAX_MODULE_SOFTRESET_WAIT) ? -ETIMEDOUT : 0;

	return r;
}