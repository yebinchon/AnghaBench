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
struct TYPE_2__ {int flags; scalar_t__ num_parents; } ;
struct kona_clk {TYPE_1__ init_data; } ;
struct clk_rate_request {long rate; unsigned long best_parent_rate; struct clk_hw* best_parent_hw; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CLK_SET_RATE_NO_REPARENT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned long FUNC2 (unsigned long) ; 
 struct clk_hw* FUNC3 (struct clk_hw*) ; 
 struct clk_hw* FUNC4 (struct clk_hw*,int) ; 
 unsigned long FUNC5 (struct clk_hw*) ; 
 void* FUNC6 (struct clk_hw*,long,unsigned long*) ; 
 struct kona_clk* FUNC7 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw,
					struct clk_rate_request *req)
{
	struct kona_clk *bcm_clk = FUNC7(hw);
	struct clk_hw *current_parent;
	unsigned long parent_rate;
	unsigned long best_delta;
	unsigned long best_rate;
	u32 parent_count;
	long rate;
	u32 which;

	/*
	 * If there is no other parent to choose, use the current one.
	 * Note:  We don't honor (or use) CLK_SET_RATE_NO_REPARENT.
	 */
	FUNC1(bcm_clk->init_data.flags & CLK_SET_RATE_NO_REPARENT);
	parent_count = (u32)bcm_clk->init_data.num_parents;
	if (parent_count < 2) {
		rate = FUNC6(hw, req->rate,
						&req->best_parent_rate);
		if (rate < 0)
			return rate;

		req->rate = rate;
		return 0;
	}

	/* Unless we can do better, stick with current parent */
	current_parent = FUNC3(hw);
	parent_rate = FUNC5(current_parent);
	best_rate = FUNC6(hw, req->rate, &parent_rate);
	best_delta = FUNC2(best_rate - req->rate);

	/* Check whether any other parent clock can produce a better result */
	for (which = 0; which < parent_count; which++) {
		struct clk_hw *parent = FUNC4(hw, which);
		unsigned long delta;
		unsigned long other_rate;

		FUNC0(!parent);
		if (parent == current_parent)
			continue;

		/* We don't support CLK_SET_RATE_PARENT */
		parent_rate = FUNC5(parent);
		other_rate = FUNC6(hw, req->rate,
						      &parent_rate);
		delta = FUNC2(other_rate - req->rate);
		if (delta < best_delta) {
			best_delta = delta;
			best_rate = other_rate;
			req->best_parent_hw = parent;
			req->best_parent_rate = parent_rate;
		}
	}

	req->rate = best_rate;
	return 0;
}