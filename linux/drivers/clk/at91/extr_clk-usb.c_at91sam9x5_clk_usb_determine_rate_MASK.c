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
struct clk_rate_request {int rate; unsigned long best_parent_rate; struct clk_hw* best_parent_hw; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int) ; 
 long EINVAL ; 
 int SAM9X5_USB_MAX_DIV ; 
 int FUNC1 (struct clk_hw*) ; 
 struct clk_hw* FUNC2 (struct clk_hw*,int) ; 
 unsigned long FUNC3 (struct clk_hw*,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw,
					     struct clk_rate_request *req)
{
	struct clk_hw *parent;
	long best_rate = -EINVAL;
	unsigned long tmp_rate;
	int best_diff = -1;
	int tmp_diff;
	int i;

	for (i = 0; i < FUNC1(hw); i++) {
		int div;

		parent = FUNC2(hw, i);
		if (!parent)
			continue;

		for (div = 1; div < SAM9X5_USB_MAX_DIV + 2; div++) {
			unsigned long tmp_parent_rate;

			tmp_parent_rate = req->rate * div;
			tmp_parent_rate = FUNC3(parent,
							   tmp_parent_rate);
			tmp_rate = FUNC0(tmp_parent_rate, div);
			if (tmp_rate < req->rate)
				tmp_diff = req->rate - tmp_rate;
			else
				tmp_diff = tmp_rate - req->rate;

			if (best_diff < 0 || best_diff > tmp_diff) {
				best_rate = tmp_rate;
				best_diff = tmp_diff;
				req->best_parent_rate = tmp_parent_rate;
				req->best_parent_hw = parent;
			}

			if (!best_diff || tmp_rate < req->rate)
				break;
		}

		if (!best_diff)
			break;
	}

	if (best_rate < 0)
		return best_rate;

	req->rate = best_rate;
	return 0;
}