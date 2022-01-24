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
struct clk_rate_request {unsigned long rate; unsigned long best_parent_rate; struct clk_hw* best_parent_hw; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CLK_SET_RATE_PARENT ; 
 int EINVAL ; 
 int FUNC0 (struct clk_hw*) ; 
 int FUNC1 (struct clk_hw*) ; 
 struct clk_hw* FUNC2 (struct clk_hw*,int) ; 
 unsigned long FUNC3 (struct clk_hw*) ; 
 unsigned long FUNC4 (struct clk_hw*,unsigned long) ; 
 unsigned long FUNC5 (unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *clk,
					     struct clk_rate_request *req)
{
	struct clk_hw *parent, *best_parent = NULL;
	int i, num_parents;
	unsigned long parent_rate, best = 0, child_rate, best_child_rate = 0;
	unsigned long rate = req->rate;

	/* find the parent that can help provide the fastest rate <= rate */
	num_parents = FUNC1(clk);
	for (i = 0; i < num_parents; i++) {
		parent = FUNC2(clk, i);
		if (!parent)
			continue;
		if (FUNC0(clk) & CLK_SET_RATE_PARENT)
			parent_rate = FUNC4(parent, rate);
		else
			parent_rate = FUNC3(parent);

		child_rate = FUNC5(rate, NULL, NULL, i,
						      parent_rate);

		if (child_rate <= rate && child_rate > best_child_rate) {
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