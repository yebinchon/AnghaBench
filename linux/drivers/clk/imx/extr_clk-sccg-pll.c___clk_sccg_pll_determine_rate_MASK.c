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
typedef  void* uint64_t ;
struct clk_sccg_pll_setup {int /*<<< orphan*/  fout; } ;
struct clk_sccg_pll {int bypass2; int bypass1; int parent; struct clk_sccg_pll_setup setup; } ;
struct clk_rate_request {int /*<<< orphan*/  rate; int /*<<< orphan*/  best_parent_rate; struct clk_hw* best_parent_hw; void* min_rate; void* max_rate; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  PLL_BYPASS1 129 
#define  PLL_BYPASS2 128 
 int FUNC0 (struct clk_hw*,struct clk_rate_request*) ; 
 struct clk_hw* FUNC1 (struct clk_hw*,int) ; 
 int FUNC2 (struct clk_sccg_pll_setup*,int /*<<< orphan*/ ,void*,int) ; 
 struct clk_sccg_pll* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw,
					struct clk_rate_request *req,
					uint64_t min,
					uint64_t max,
					uint64_t rate,
					int bypass)
{
	struct clk_sccg_pll *pll = FUNC3(hw);
	struct clk_sccg_pll_setup *setup = &pll->setup;
	struct clk_hw *parent_hw = NULL;
	int bypass_parent_index;
	int ret = -EINVAL;

	req->max_rate = max;
	req->min_rate = min;

	switch (bypass) {
	case PLL_BYPASS2:
		bypass_parent_index = pll->bypass2;
		break;
	case PLL_BYPASS1:
		bypass_parent_index = pll->bypass1;
		break;
	default:
		bypass_parent_index = pll->parent;
		break;
	}

	parent_hw = FUNC1(hw, bypass_parent_index);
	ret = FUNC0(parent_hw, req);
	if (!ret) {
		ret = FUNC2(setup, req->rate,
						rate, bypass);
	}

	req->best_parent_hw = parent_hw;
	req->best_parent_rate = req->rate;
	req->rate = setup->fout;

	return ret;
}