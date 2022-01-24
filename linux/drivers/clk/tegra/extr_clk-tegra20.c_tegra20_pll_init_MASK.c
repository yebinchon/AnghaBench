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
struct clk {int dummy; } ;

/* Variables and functions */
 int CLK_IGNORE_UNUSED ; 
 int /*<<< orphan*/  CLK_SET_RATE_GATE ; 
 int CLK_SET_RATE_PARENT ; 
 scalar_t__ PLLA_OUT ; 
 scalar_t__ PLLC_OUT ; 
 scalar_t__ PLLM_OUT ; 
 size_t TEGRA20_CLK_PLL_A ; 
 size_t TEGRA20_CLK_PLL_A_OUT0 ; 
 size_t TEGRA20_CLK_PLL_C ; 
 size_t TEGRA20_CLK_PLL_C_OUT1 ; 
 size_t TEGRA20_CLK_PLL_D ; 
 size_t TEGRA20_CLK_PLL_D_OUT0 ; 
 size_t TEGRA20_CLK_PLL_E ; 
 size_t TEGRA20_CLK_PLL_M ; 
 size_t TEGRA20_CLK_PLL_M_OUT1 ; 
 size_t TEGRA20_CLK_PLL_U ; 
 size_t TEGRA20_CLK_PLL_X ; 
 int /*<<< orphan*/  TEGRA_DIVIDER_ROUND_UP ; 
 scalar_t__ clk_base ; 
 struct clk* FUNC0 (int /*<<< orphan*/ *,char*,char*,int,int,int) ; 
 struct clk** clks ; 
 int /*<<< orphan*/  pll_a_params ; 
 int /*<<< orphan*/  pll_c_params ; 
 int /*<<< orphan*/  pll_d_params ; 
 int /*<<< orphan*/  pll_e_params ; 
 int /*<<< orphan*/  pll_m_params ; 
 int /*<<< orphan*/  pll_u_params ; 
 int /*<<< orphan*/  pll_x_params ; 
 int /*<<< orphan*/  pmc_base ; 
 struct clk* FUNC1 (char*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 struct clk* FUNC2 (char*,char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct clk* FUNC3 (char*,char*,scalar_t__,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct clk* FUNC4 (char*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void)
{
	struct clk *clk;

	/* PLLC */
	clk = FUNC2("pll_c", "pll_ref", clk_base, NULL, 0,
			    &pll_c_params, NULL);
	clks[TEGRA20_CLK_PLL_C] = clk;

	/* PLLC_OUT1 */
	clk = FUNC1("pll_c_out1_div", "pll_c",
				clk_base + PLLC_OUT, 0, TEGRA_DIVIDER_ROUND_UP,
				8, 8, 1, NULL);
	clk = FUNC3("pll_c_out1", "pll_c_out1_div",
				clk_base + PLLC_OUT, 1, 0, CLK_SET_RATE_PARENT,
				0, NULL);
	clks[TEGRA20_CLK_PLL_C_OUT1] = clk;

	/* PLLM */
	clk = FUNC2("pll_m", "pll_ref", clk_base, NULL,
			    CLK_SET_RATE_GATE, &pll_m_params, NULL);
	clks[TEGRA20_CLK_PLL_M] = clk;

	/* PLLM_OUT1 */
	clk = FUNC1("pll_m_out1_div", "pll_m",
				clk_base + PLLM_OUT, 0, TEGRA_DIVIDER_ROUND_UP,
				8, 8, 1, NULL);
	clk = FUNC3("pll_m_out1", "pll_m_out1_div",
				clk_base + PLLM_OUT, 1, 0,
				CLK_SET_RATE_PARENT, 0, NULL);
	clks[TEGRA20_CLK_PLL_M_OUT1] = clk;

	/* PLLX */
	clk = FUNC2("pll_x", "pll_ref", clk_base, NULL, 0,
			    &pll_x_params, NULL);
	clks[TEGRA20_CLK_PLL_X] = clk;

	/* PLLU */
	clk = FUNC2("pll_u", "pll_ref", clk_base, NULL, 0,
			    &pll_u_params, NULL);
	clks[TEGRA20_CLK_PLL_U] = clk;

	/* PLLD */
	clk = FUNC2("pll_d", "pll_ref", clk_base, NULL, 0,
			    &pll_d_params, NULL);
	clks[TEGRA20_CLK_PLL_D] = clk;

	/* PLLD_OUT0 */
	clk = FUNC0(NULL, "pll_d_out0", "pll_d",
					CLK_SET_RATE_PARENT, 1, 2);
	clks[TEGRA20_CLK_PLL_D_OUT0] = clk;

	/* PLLA */
	clk = FUNC2("pll_a", "pll_p_out1", clk_base, NULL, 0,
			    &pll_a_params, NULL);
	clks[TEGRA20_CLK_PLL_A] = clk;

	/* PLLA_OUT0 */
	clk = FUNC1("pll_a_out0_div", "pll_a",
				clk_base + PLLA_OUT, 0, TEGRA_DIVIDER_ROUND_UP,
				8, 8, 1, NULL);
	clk = FUNC3("pll_a_out0", "pll_a_out0_div",
				clk_base + PLLA_OUT, 1, 0, CLK_IGNORE_UNUSED |
				CLK_SET_RATE_PARENT, 0, NULL);
	clks[TEGRA20_CLK_PLL_A_OUT0] = clk;

	/* PLLE */
	clk = FUNC4("pll_e", "pll_ref", clk_base, pmc_base,
			     0, &pll_e_params, NULL);
	clks[TEGRA20_CLK_PLL_E] = clk;
}