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
typedef  int /*<<< orphan*/  u32 ;
struct clk_rate_request {unsigned long rate; unsigned long best_parent_rate; struct clk_hw* best_parent_hw; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct clk_hw*) ; 
 unsigned long FUNC1 (struct clk_hw*,size_t,unsigned long,int /*<<< orphan*/ *,unsigned long*,unsigned long*) ; 
 size_t FUNC2 (struct clk_hw*) ; 
 struct clk_hw* FUNC3 (struct clk_hw*) ; 
 struct clk_hw* FUNC4 (struct clk_hw*,size_t) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw,
					struct clk_rate_request *req)
{
	struct clk_hw *parent, *best_parent = NULL;
	bool current_parent_is_pllc;
	unsigned long rate, best_rate = 0;
	unsigned long prate, best_prate = 0;
	unsigned long avgrate, best_avgrate = 0;
	size_t i;
	u32 div;

	current_parent_is_pllc = FUNC0(FUNC3(hw));

	/*
	 * Select parent clock that results in the closest but lower rate
	 */
	for (i = 0; i < FUNC2(hw); ++i) {
		parent = FUNC4(hw, i);
		if (!parent)
			continue;

		/*
		 * Don't choose a PLLC-derived clock as our parent
		 * unless it had been manually set that way.  PLLC's
		 * frequency gets adjusted by the firmware due to
		 * over-temp or under-voltage conditions, without
		 * prior notification to our clock consumer.
		 */
		if (FUNC0(parent) && !current_parent_is_pllc)
			continue;

		rate = FUNC1(hw, i, req->rate,
							  &div, &prate,
							  &avgrate);
		if (rate > best_rate && rate <= req->rate) {
			best_parent = parent;
			best_prate = prate;
			best_rate = rate;
			best_avgrate = avgrate;
		}
	}

	if (!best_parent)
		return -EINVAL;

	req->best_parent_hw = best_parent;
	req->best_parent_rate = best_prate;

	req->rate = best_avgrate;

	return 0;
}