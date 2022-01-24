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
struct mn {scalar_t__ width; } ;
struct TYPE_2__ {scalar_t__ enable_reg; int /*<<< orphan*/  regmap; } ;
struct clk_rcg {scalar_t__ ns_reg; scalar_t__ md_reg; TYPE_1__ clkr; struct mn mn; int /*<<< orphan*/  p; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 struct clk_rcg* FUNC6 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long
FUNC7(struct clk_hw *hw, unsigned long parent_rate)
{
	struct clk_rcg *rcg = FUNC6(hw);
	u32 pre_div, m = 0, n = 0, ns, md, mode = 0;
	struct mn *mn = &rcg->mn;

	FUNC5(rcg->clkr.regmap, rcg->ns_reg, &ns);
	pre_div = FUNC3(&rcg->p, ns);

	if (rcg->mn.width) {
		FUNC5(rcg->clkr.regmap, rcg->md_reg, &md);
		m = FUNC1(mn, md);
		n = FUNC2(mn, ns, m);
		/* MN counter mode is in hw.enable_reg sometimes */
		if (rcg->clkr.enable_reg != rcg->ns_reg)
			FUNC5(rcg->clkr.regmap, rcg->clkr.enable_reg, &mode);
		else
			mode = ns;
		mode = FUNC4(mn, mode);
	}

	return FUNC0(parent_rate, m, n, mode, pre_div);
}