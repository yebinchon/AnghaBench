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
struct clk_rate_request {unsigned long rate; unsigned long best_parent_rate; int /*<<< orphan*/ * best_parent_hw; } ;
struct clk_hw {struct clk_core* core; } ;
struct clk_core {int flags; int num_parents; int /*<<< orphan*/ * hw; struct clk_core* parent; } ;

/* Variables and functions */
 int CLK_SET_RATE_NO_REPARENT ; 
 int CLK_SET_RATE_PARENT ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct clk_rate_request*) ; 
 struct clk_core* FUNC1 (struct clk_core*,int) ; 
 void* FUNC2 (struct clk_core*) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long,unsigned long,unsigned long) ; 

int FUNC4(struct clk_hw *hw,
				 struct clk_rate_request *req,
				 unsigned long flags)
{
	struct clk_core *core = hw->core, *parent, *best_parent = NULL;
	int i, num_parents, ret;
	unsigned long best = 0;
	struct clk_rate_request parent_req = *req;

	/* if NO_REPARENT flag set, pass through to current parent */
	if (core->flags & CLK_SET_RATE_NO_REPARENT) {
		parent = core->parent;
		if (core->flags & CLK_SET_RATE_PARENT) {
			ret = FUNC0(parent ? parent->hw : NULL,
						   &parent_req);
			if (ret)
				return ret;

			best = parent_req.rate;
		} else if (parent) {
			best = FUNC2(parent);
		} else {
			best = FUNC2(core);
		}

		goto out;
	}

	/* find the parent that can provide the fastest rate <= rate */
	num_parents = core->num_parents;
	for (i = 0; i < num_parents; i++) {
		parent = FUNC1(core, i);
		if (!parent)
			continue;

		if (core->flags & CLK_SET_RATE_PARENT) {
			parent_req = *req;
			ret = FUNC0(parent->hw, &parent_req);
			if (ret)
				continue;
		} else {
			parent_req.rate = FUNC2(parent);
		}

		if (FUNC3(req->rate, parent_req.rate,
				       best, flags)) {
			best_parent = parent;
			best = parent_req.rate;
		}
	}

	if (!best_parent)
		return -EINVAL;

out:
	if (best_parent)
		req->best_parent_hw = best_parent->hw;
	req->best_parent_rate = best;
	req->rate = best;

	return 0;
}