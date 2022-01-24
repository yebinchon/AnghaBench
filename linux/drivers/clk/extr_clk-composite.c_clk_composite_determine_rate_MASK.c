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
struct clk_rate_request {unsigned long best_parent_rate; long rate; struct clk_hw* best_parent_hw; } ;
struct clk_ops {int (* determine_rate ) (struct clk_hw*,struct clk_rate_request*) ;long (* round_rate ) (struct clk_hw*,long,unsigned long*) ;scalar_t__ set_parent; } ;
struct clk_hw {int dummy; } ;
struct clk_composite {struct clk_hw* mux_hw; struct clk_hw* rate_hw; struct clk_ops* mux_ops; struct clk_ops* rate_ops; } ;

/* Variables and functions */
 int CLK_SET_RATE_NO_REPARENT ; 
 int EINVAL ; 
 unsigned long ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct clk_hw*,struct clk_hw*) ; 
 unsigned long FUNC1 (long) ; 
 int FUNC2 (struct clk_hw*) ; 
 int FUNC3 (struct clk_hw*) ; 
 struct clk_hw* FUNC4 (struct clk_hw*) ; 
 struct clk_hw* FUNC5 (struct clk_hw*,int) ; 
 void* FUNC6 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (struct clk_hw*,struct clk_rate_request*) ; 
 long FUNC9 (struct clk_hw*,long,unsigned long*) ; 
 long FUNC10 (struct clk_hw*,long,unsigned long*) ; 
 int FUNC11 (struct clk_hw*,struct clk_rate_request*) ; 
 struct clk_composite* FUNC12 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC13(struct clk_hw *hw,
					struct clk_rate_request *req)
{
	struct clk_composite *composite = FUNC12(hw);
	const struct clk_ops *rate_ops = composite->rate_ops;
	const struct clk_ops *mux_ops = composite->mux_ops;
	struct clk_hw *rate_hw = composite->rate_hw;
	struct clk_hw *mux_hw = composite->mux_hw;
	struct clk_hw *parent;
	unsigned long parent_rate;
	long tmp_rate, best_rate = 0;
	unsigned long rate_diff;
	unsigned long best_rate_diff = ULONG_MAX;
	long rate;
	int i;

	if (rate_hw && rate_ops && rate_ops->determine_rate) {
		FUNC0(rate_hw, hw);
		return rate_ops->determine_rate(rate_hw, req);
	} else if (rate_hw && rate_ops && rate_ops->round_rate &&
		   mux_hw && mux_ops && mux_ops->set_parent) {
		req->best_parent_hw = NULL;

		if (FUNC2(hw) & CLK_SET_RATE_NO_REPARENT) {
			parent = FUNC4(mux_hw);
			req->best_parent_hw = parent;
			req->best_parent_rate = FUNC6(parent);

			rate = rate_ops->round_rate(rate_hw, req->rate,
						    &req->best_parent_rate);
			if (rate < 0)
				return rate;

			req->rate = rate;
			return 0;
		}

		for (i = 0; i < FUNC3(mux_hw); i++) {
			parent = FUNC5(mux_hw, i);
			if (!parent)
				continue;

			parent_rate = FUNC6(parent);

			tmp_rate = rate_ops->round_rate(rate_hw, req->rate,
							&parent_rate);
			if (tmp_rate < 0)
				continue;

			rate_diff = FUNC1(req->rate - tmp_rate);

			if (!rate_diff || !req->best_parent_hw
				       || best_rate_diff > rate_diff) {
				req->best_parent_hw = parent;
				req->best_parent_rate = parent_rate;
				best_rate_diff = rate_diff;
				best_rate = tmp_rate;
			}

			if (!rate_diff)
				return 0;
		}

		req->rate = best_rate;
		return 0;
	} else if (mux_hw && mux_ops && mux_ops->determine_rate) {
		FUNC0(mux_hw, hw);
		return mux_ops->determine_rate(mux_hw, req);
	} else {
		FUNC7("clk: clk_composite_determine_rate function called, but no mux or rate callback set!\n");
		return -EINVAL;
	}
}