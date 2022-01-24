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
struct clk_regmap_mux_div {int /*<<< orphan*/  hid_width; } ;
struct clk_rate_request {unsigned long rate; unsigned long best_parent_rate; struct clk_hw* best_parent_hw; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 unsigned int FUNC1 (struct clk_hw*) ; 
 struct clk_hw* FUNC2 (struct clk_hw*,unsigned int) ; 
 unsigned long FUNC3 (struct clk_hw*) ; 
 unsigned long FUNC4 (struct clk_hw*,unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long,unsigned long) ; 
 unsigned long FUNC6 (unsigned long,int,unsigned int) ; 
 struct clk_regmap_mux_div* FUNC7 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw,
				  struct clk_rate_request *req)
{
	struct clk_regmap_mux_div *md = FUNC7(hw);
	unsigned int i, div, max_div;
	unsigned long actual_rate, best_rate = 0;
	unsigned long req_rate = req->rate;

	for (i = 0; i < FUNC1(hw); i++) {
		struct clk_hw *parent = FUNC2(hw, i);
		unsigned long parent_rate = FUNC3(parent);

		max_div = FUNC0(md->hid_width) - 1;
		for (div = 1; div < max_div; div++) {
			parent_rate = FUNC6(req_rate, div, 2);
			parent_rate = FUNC4(parent, parent_rate);
			actual_rate = FUNC6(parent_rate, 2, div);

			if (FUNC5(req_rate, best_rate, actual_rate)) {
				best_rate = actual_rate;
				req->rate = best_rate;
				req->best_parent_rate = parent_rate;
				req->best_parent_hw = parent;
			}

			if (actual_rate < req_rate || best_rate <= req_rate)
				break;
		}
	}

	if (!best_rate)
		return -EINVAL;

	return 0;
}