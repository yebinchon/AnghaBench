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
struct stratix10_clock_data {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct stratix10_clock_data*) ; 
 int FUNC2 (struct stratix10_clock_data*) ; 
 int /*<<< orphan*/  STRATIX10_NUM_CLKS ; 
 struct stratix10_clock_data* FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stratix10_clock_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stratix10_clock_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stratix10_clock_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stratix10_clock_data*) ; 
 int /*<<< orphan*/  s10_gate_clks ; 
 int /*<<< orphan*/  s10_main_perip_c_clks ; 
 int /*<<< orphan*/  s10_main_perip_cnt_clks ; 
 int /*<<< orphan*/  s10_pll_clks ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct stratix10_clock_data *clk_data;

	clk_data = FUNC3(pdev, STRATIX10_NUM_CLKS);
	if (FUNC1(clk_data))
		return FUNC2(clk_data);

	FUNC7(s10_pll_clks, FUNC0(s10_pll_clks), clk_data);

	FUNC4(s10_main_perip_c_clks,
				 FUNC0(s10_main_perip_c_clks), clk_data);

	FUNC5(s10_main_perip_cnt_clks,
				   FUNC0(s10_main_perip_cnt_clks),
				   clk_data);

	FUNC6(s10_gate_clks, FUNC0(s10_gate_clks),
			      clk_data);
	return 0;
}