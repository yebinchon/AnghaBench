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
 long EINVAL ; 
 int FUNC0 (struct clk_hw*) ; 
 struct clk_hw* FUNC1 (struct clk_hw*,int) ; 
 unsigned long FUNC2 (struct clk_hw*) ; 
 unsigned long FUNC3 (unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw,
				   struct clk_rate_request *req)
{
	long best_rate = -EINVAL;
	int i;

	for (i = 0; i < FUNC0(hw); i++) {
		unsigned long parent_rate;
		unsigned long tmp_rate;
		struct clk_hw *parent;

		parent = FUNC1(hw, i);
		if (!parent)
			continue;

		parent_rate = FUNC2(parent);

		tmp_rate = FUNC3(req->rate, parent_rate,
						 NULL, NULL);

		if (best_rate < 0 ||
		    (req->rate - tmp_rate) < (req->rate - best_rate)) {
			best_rate = tmp_rate;
			req->best_parent_rate = parent_rate;
			req->best_parent_hw = parent;
		}
	}

	if (best_rate < 0)
		return best_rate;

	req->rate = best_rate;
	return 0;
}