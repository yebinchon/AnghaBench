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
struct tegra_dfll {int dummy; } ;
struct dfll_rate_req {int dummy; } ;
struct clk_rate_request {int /*<<< orphan*/  rate; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct tegra_dfll* FUNC0 (struct clk_hw*) ; 
 int FUNC1 (struct tegra_dfll*,struct dfll_rate_req*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw,
				   struct clk_rate_request *clk_req)
{
	struct tegra_dfll *td = FUNC0(hw);
	struct dfll_rate_req req;
	int ret;

	ret = FUNC1(td, &req, clk_req->rate);
	if (ret)
		return ret;

	/*
	 * Don't set the rounded rate, since it doesn't really matter as
	 * the output rate will be voltage controlled anyway, and cpufreq
	 * freaks out if any rounding happens.
	 */

	return 0;
}