#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct clk_hw {struct clk_init_data* init; } ;
struct zynqmp_pll {struct clk_hw hw; int /*<<< orphan*/  clk_id; } ;
struct clock_topology {int /*<<< orphan*/  flag; } ;
struct clk_init_data {char const* name; char const* const* parent_names; int num_parents; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct clk_hw* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PS_PLL_VCO_MAX ; 
 int /*<<< orphan*/  PS_PLL_VCO_MIN ; 
 int FUNC1 (int /*<<< orphan*/ *,struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zynqmp_pll*) ; 
 struct zynqmp_pll* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  zynqmp_pll_ops ; 

struct clk_hw *FUNC6(const char *name, u32 clk_id,
				       const char * const *parents,
				       u8 num_parents,
				       const struct clock_topology *nodes)
{
	struct zynqmp_pll *pll;
	struct clk_hw *hw;
	struct clk_init_data init;
	int ret;

	init.name = name;
	init.ops = &zynqmp_pll_ops;
	init.flags = nodes->flag;
	init.parent_names = parents;
	init.num_parents = 1;

	pll = FUNC4(sizeof(*pll), GFP_KERNEL);
	if (!pll)
		return FUNC0(-ENOMEM);

	pll->hw.init = &init;
	pll->clk_id = clk_id;

	hw = &pll->hw;
	ret = FUNC1(NULL, hw);
	if (ret) {
		FUNC3(pll);
		return FUNC0(ret);
	}

	FUNC2(hw, PS_PLL_VCO_MIN, PS_PLL_VCO_MAX);
	if (ret < 0)
		FUNC5("%s:ERROR clk_set_rate_range failed %d\n", name, ret);

	return hw;
}