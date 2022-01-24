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
struct clk_rate_request {int /*<<< orphan*/  best_parent_rate; int /*<<< orphan*/  rate; struct clk_hw* best_parent_hw; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct clk_hw *hw,
				struct clk_rate_request *req)
{
	struct clk_hw *p;

	p = req->best_parent_hw;
	req->best_parent_rate = FUNC0(p, req->rate);
	req->rate = req->best_parent_rate;

	return 0;
}