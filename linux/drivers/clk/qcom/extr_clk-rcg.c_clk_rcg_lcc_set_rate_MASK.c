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
struct freq_tbl {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;
struct clk_rcg {int /*<<< orphan*/  ns_reg; TYPE_1__ clkr; int /*<<< orphan*/  freq_tbl; } ;
struct clk_hw {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct clk_rcg*,struct freq_tbl const*) ; 
 struct freq_tbl* FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_rcg* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw, unsigned long rate,
				unsigned long parent_rate)
{
	struct clk_rcg *rcg = FUNC5(hw);
	const struct freq_tbl *f;
	int ret;
	u32 gfm = FUNC0(10);

	f = FUNC3(rcg->freq_tbl, rate);
	if (!f)
		return -EINVAL;

	/* Switch to XO to avoid glitches */
	FUNC4(rcg->clkr.regmap, rcg->ns_reg, gfm, 0);
	ret = FUNC2(rcg, f);
	/* Switch back to M/N if it's clocking */
	if (FUNC1(hw->clk))
		FUNC4(rcg->clkr.regmap, rcg->ns_reg, gfm, gfm);

	return ret;
}