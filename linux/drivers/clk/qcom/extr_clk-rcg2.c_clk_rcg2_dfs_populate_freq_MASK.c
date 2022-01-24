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
struct freq_tbl {int pre_div; int m; int n; int /*<<< orphan*/  freq; int /*<<< orphan*/  src; } ;
struct TYPE_4__ {int /*<<< orphan*/  regmap; int /*<<< orphan*/  hw; } ;
struct clk_rcg2 {scalar_t__ cmd_rcgr; TYPE_2__ clkr; int /*<<< orphan*/  mnd_width; TYPE_1__* parent_map; int /*<<< orphan*/  hid_width; } ;
struct clk_hw {int dummy; } ;
struct TYPE_3__ {int cfg; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CFG_MODE_MASK ; 
 int CFG_MODE_SHIFT ; 
 int CFG_SRC_SEL_MASK ; 
 int CFG_SRC_SEL_SHIFT ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int,int,int,int) ; 
 int FUNC5 (struct clk_hw*) ; 
 struct clk_hw* FUNC6 (int /*<<< orphan*/ *,int) ; 
 unsigned long FUNC7 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 struct clk_rcg2* FUNC9 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC10(struct clk_hw *hw, unsigned int l,
				       struct freq_tbl *f)
{
	struct clk_rcg2 *rcg = FUNC9(hw);
	struct clk_hw *p;
	unsigned long prate = 0;
	u32 val, mask, cfg, mode;
	int i, num_parents;

	FUNC8(rcg->clkr.regmap, rcg->cmd_rcgr + FUNC1(l), &cfg);

	mask = FUNC0(rcg->hid_width) - 1;
	f->pre_div = 1;
	if (cfg & mask)
		f->pre_div = cfg & mask;

	cfg &= CFG_SRC_SEL_MASK;
	cfg >>= CFG_SRC_SEL_SHIFT;

	num_parents = FUNC5(hw);
	for (i = 0; i < num_parents; i++) {
		if (cfg == rcg->parent_map[i].cfg) {
			f->src = rcg->parent_map[i].src;
			p = FUNC6(&rcg->clkr.hw, i);
			prate = FUNC7(p);
		}
	}

	mode = cfg & CFG_MODE_MASK;
	mode >>= CFG_MODE_SHIFT;
	if (mode) {
		mask = FUNC0(rcg->mnd_width) - 1;
		FUNC8(rcg->clkr.regmap, rcg->cmd_rcgr + FUNC2(l),
			    &val);
		val &= mask;
		f->m = val;

		FUNC8(rcg->clkr.regmap, rcg->cmd_rcgr + FUNC3(l),
			    &val);
		val = ~val;
		val &= mask;
		val += f->m;
		f->n = val;
	}

	f->freq = FUNC4(prate, f->m, f->n, mode, f->pre_div);
}