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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;
struct clk_rcg2 {scalar_t__ hid_width; TYPE_1__ clkr; scalar_t__ mnd_width; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int CFG_MODE_MASK ; 
 int CFG_MODE_SHIFT ; 
 int CFG_SRC_DIV_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct clk_rcg2*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_rcg2*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_rcg2*) ; 
 unsigned long FUNC4 (unsigned long,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct clk_rcg2* FUNC6 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long
FUNC7(struct clk_hw *hw, unsigned long parent_rate)
{
	struct clk_rcg2 *rcg = FUNC6(hw);
	u32 cfg, hid_div, m = 0, n = 0, mode = 0, mask;

	FUNC5(rcg->clkr.regmap, FUNC1(rcg), &cfg);

	if (rcg->mnd_width) {
		mask = FUNC0(rcg->mnd_width) - 1;
		FUNC5(rcg->clkr.regmap, FUNC2(rcg), &m);
		m &= mask;
		FUNC5(rcg->clkr.regmap, FUNC3(rcg), &n);
		n =  ~n;
		n &= mask;
		n += m;
		mode = cfg & CFG_MODE_MASK;
		mode >>= CFG_MODE_SHIFT;
	}

	mask = FUNC0(rcg->hid_width) - 1;
	hid_div = cfg >> CFG_SRC_DIV_SHIFT;
	hid_div &= mask;

	return FUNC4(parent_rate, m, n, mode, hid_div);
}