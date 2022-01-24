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
struct clk_rate_request {unsigned long rate; int /*<<< orphan*/  max_rate; int /*<<< orphan*/  min_rate; } ;
struct clk_hw {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct clk_rate_request*) ; 

unsigned long FUNC2(struct clk_hw *hw, unsigned long rate)
{
	int ret;
	struct clk_rate_request req;

	FUNC0(hw->core, &req.min_rate, &req.max_rate);
	req.rate = rate;

	ret = FUNC1(hw->core, &req);
	if (ret)
		return 0;

	return req.rate;
}