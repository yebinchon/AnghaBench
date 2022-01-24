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
 int FUNC0 (struct clk_hw*,struct clk_rate_request*) ; 
 struct clk_hw* FUNC1 (struct clk_hw*,int) ; 
 unsigned long FUNC2 (struct clk_hw*) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw,
				    struct clk_rate_request *req)
{
	struct clk_rate_request parent_req = { };
	struct clk_hw *p2, *p8, *p9, *xo;
	unsigned long p9_rate;
	int ret;

	xo = FUNC1(hw, 0);
	if (req->rate == FUNC2(xo)) {
		req->best_parent_hw = xo;
		return 0;
	}

	p9 = FUNC1(hw, 2);
	p2 = FUNC1(hw, 3);
	p8 = FUNC1(hw, 4);

	/* PLL9 is a fixed rate PLL */
	p9_rate = FUNC2(p9);

	parent_req.rate = req->rate = FUNC3(req->rate, p9_rate);
	if (req->rate == p9_rate) {
		req->rate = req->best_parent_rate = p9_rate;
		req->best_parent_hw = p9;
		return 0;
	}

	if (req->best_parent_hw == p9) {
		/* Are we going back to a previously used rate? */
		if (FUNC2(p8) == req->rate)
			req->best_parent_hw = p8;
		else
			req->best_parent_hw = p2;
	} else if (req->best_parent_hw == p8) {
		req->best_parent_hw = p2;
	} else {
		req->best_parent_hw = p8;
	}

	ret = FUNC0(req->best_parent_hw, &parent_req);
	if (ret)
		return ret;

	req->rate = req->best_parent_rate = parent_req.rate;

	return 0;
}