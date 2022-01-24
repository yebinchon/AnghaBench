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
struct TYPE_2__ {int /*<<< orphan*/  pre_div_width; } ;
struct clk_rcg {TYPE_1__ p; } ;
struct clk_rate_request {unsigned long rate; unsigned long best_parent_rate; int /*<<< orphan*/  best_parent_hw; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 struct clk_rcg* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw,
		struct clk_rate_request *req)
{
	struct clk_rcg *rcg = FUNC2(hw);
	int pre_div_max = FUNC0(rcg->p.pre_div_width);
	int div;
	unsigned long src_rate;

	if (req->rate == 0)
		return -EINVAL;

	src_rate = FUNC1(req->best_parent_hw);

	div = src_rate / req->rate;

	if (div >= 1 && div <= pre_div_max) {
		req->best_parent_rate = src_rate;
		req->rate = src_rate / div;
		return 0;
	}

	return -EINVAL;
}