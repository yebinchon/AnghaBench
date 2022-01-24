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
struct factors_request {unsigned long rate; int parent_index; unsigned long parent_rate; } ;
struct clk_rate_request {unsigned long rate; unsigned long best_parent_rate; struct clk_hw* best_parent_hw; } ;
struct clk_hw {int dummy; } ;
struct clk_factors {int /*<<< orphan*/  (* get_factors ) (struct factors_request*) ;} ;

/* Variables and functions */
 int CLK_SET_RATE_PARENT ; 
 int EINVAL ; 
 int FUNC0 (struct clk_hw*) ; 
 int FUNC1 (struct clk_hw*) ; 
 struct clk_hw* FUNC2 (struct clk_hw*,int) ; 
 unsigned long FUNC3 (struct clk_hw*) ; 
 unsigned long FUNC4 (struct clk_hw*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct factors_request*) ; 
 struct clk_factors* FUNC6 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw,
				      struct clk_rate_request *req)
{
	struct clk_factors *factors = FUNC6(hw);
	struct clk_hw *parent, *best_parent = NULL;
	int i, num_parents;
	unsigned long parent_rate, best = 0, child_rate, best_child_rate = 0;

	/* find the parent that can help provide the fastest rate <= rate */
	num_parents = FUNC1(hw);
	for (i = 0; i < num_parents; i++) {
		struct factors_request factors_req = {
			.rate = req->rate,
			.parent_index = i,
		};
		parent = FUNC2(hw, i);
		if (!parent)
			continue;
		if (FUNC0(hw) & CLK_SET_RATE_PARENT)
			parent_rate = FUNC4(parent, req->rate);
		else
			parent_rate = FUNC3(parent);

		factors_req.parent_rate = parent_rate;
		factors->get_factors(&factors_req);
		child_rate = factors_req.rate;

		if (child_rate <= req->rate && child_rate > best_child_rate) {
			best_parent = parent;
			best = parent_rate;
			best_child_rate = child_rate;
		}
	}

	if (!best_parent)
		return -EINVAL;

	req->best_parent_hw = best_parent;
	req->best_parent_rate = best;
	req->rate = best_child_rate;

	return 0;
}