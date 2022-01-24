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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  regmap; } ;
struct clk_rcg2 {scalar_t__ cmd_rcgr; TYPE_2__ clkr; int /*<<< orphan*/  mnd_width; int /*<<< orphan*/  hid_width; TYPE_1__* freq_tbl; } ;
struct clk_hw {int dummy; } ;
struct TYPE_3__ {unsigned long freq; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CFG_MODE_MASK ; 
 int CFG_MODE_SHIFT ; 
 int FUNC1 (int,int) ; 
 scalar_t__ SE_CMD_DFSR_OFFSET ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 unsigned long FUNC5 (unsigned long,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 struct clk_rcg2* FUNC7 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long
FUNC8(struct clk_hw *hw, unsigned long parent_rate)
{
	struct clk_rcg2 *rcg = FUNC7(hw);
	u32 level, mask, cfg, m = 0, n = 0, mode, pre_div;

	FUNC6(rcg->clkr.regmap,
		    rcg->cmd_rcgr + SE_CMD_DFSR_OFFSET, &level);
	level &= FUNC1(4, 1);
	level >>= 1;

	if (rcg->freq_tbl)
		return rcg->freq_tbl[level].freq;

	/*
	 * Assume that parent_rate is actually the parent because
	 * we can't do any better at figuring it out when the table
	 * hasn't been populated yet. We only populate the table
	 * in determine_rate because we can't guarantee the parents
	 * will be registered with the framework until then.
	 */
	FUNC6(rcg->clkr.regmap, rcg->cmd_rcgr + FUNC2(level),
		    &cfg);

	mask = FUNC0(rcg->hid_width) - 1;
	pre_div = 1;
	if (cfg & mask)
		pre_div = cfg & mask;

	mode = cfg & CFG_MODE_MASK;
	mode >>= CFG_MODE_SHIFT;
	if (mode) {
		mask = FUNC0(rcg->mnd_width) - 1;
		FUNC6(rcg->clkr.regmap,
			    rcg->cmd_rcgr + FUNC3(level), &m);
		m &= mask;

		FUNC6(rcg->clkr.regmap,
			    rcg->cmd_rcgr + FUNC4(level), &n);
		n = ~n;
		n &= mask;
		n += m;
	}

	return FUNC5(parent_rate, m, n, mode, pre_div);
}