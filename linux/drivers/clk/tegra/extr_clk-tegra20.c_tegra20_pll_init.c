
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int CLK_IGNORE_UNUSED ;
 int CLK_SET_RATE_GATE ;
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
 int TEGRA_DIVIDER_ROUND_UP ;
 scalar_t__ clk_base ;
 struct clk* clk_register_fixed_factor (int *,char*,char*,int,int,int) ;
 struct clk** clks ;
 int pll_a_params ;
 int pll_c_params ;
 int pll_d_params ;
 int pll_e_params ;
 int pll_m_params ;
 int pll_u_params ;
 int pll_x_params ;
 int pmc_base ;
 struct clk* tegra_clk_register_divider (char*,char*,scalar_t__,int ,int ,int,int,int,int *) ;
 struct clk* tegra_clk_register_pll (char*,char*,scalar_t__,int *,int ,int *,int *) ;
 struct clk* tegra_clk_register_pll_out (char*,char*,scalar_t__,int,int ,int,int ,int *) ;
 struct clk* tegra_clk_register_plle (char*,char*,scalar_t__,int ,int ,int *,int *) ;

__attribute__((used)) static void tegra20_pll_init(void)
{
 struct clk *clk;


 clk = tegra_clk_register_pll("pll_c", "pll_ref", clk_base, ((void*)0), 0,
       &pll_c_params, ((void*)0));
 clks[TEGRA20_CLK_PLL_C] = clk;


 clk = tegra_clk_register_divider("pll_c_out1_div", "pll_c",
    clk_base + PLLC_OUT, 0, TEGRA_DIVIDER_ROUND_UP,
    8, 8, 1, ((void*)0));
 clk = tegra_clk_register_pll_out("pll_c_out1", "pll_c_out1_div",
    clk_base + PLLC_OUT, 1, 0, CLK_SET_RATE_PARENT,
    0, ((void*)0));
 clks[TEGRA20_CLK_PLL_C_OUT1] = clk;


 clk = tegra_clk_register_pll("pll_m", "pll_ref", clk_base, ((void*)0),
       CLK_SET_RATE_GATE, &pll_m_params, ((void*)0));
 clks[TEGRA20_CLK_PLL_M] = clk;


 clk = tegra_clk_register_divider("pll_m_out1_div", "pll_m",
    clk_base + PLLM_OUT, 0, TEGRA_DIVIDER_ROUND_UP,
    8, 8, 1, ((void*)0));
 clk = tegra_clk_register_pll_out("pll_m_out1", "pll_m_out1_div",
    clk_base + PLLM_OUT, 1, 0,
    CLK_SET_RATE_PARENT, 0, ((void*)0));
 clks[TEGRA20_CLK_PLL_M_OUT1] = clk;


 clk = tegra_clk_register_pll("pll_x", "pll_ref", clk_base, ((void*)0), 0,
       &pll_x_params, ((void*)0));
 clks[TEGRA20_CLK_PLL_X] = clk;


 clk = tegra_clk_register_pll("pll_u", "pll_ref", clk_base, ((void*)0), 0,
       &pll_u_params, ((void*)0));
 clks[TEGRA20_CLK_PLL_U] = clk;


 clk = tegra_clk_register_pll("pll_d", "pll_ref", clk_base, ((void*)0), 0,
       &pll_d_params, ((void*)0));
 clks[TEGRA20_CLK_PLL_D] = clk;


 clk = clk_register_fixed_factor(((void*)0), "pll_d_out0", "pll_d",
     CLK_SET_RATE_PARENT, 1, 2);
 clks[TEGRA20_CLK_PLL_D_OUT0] = clk;


 clk = tegra_clk_register_pll("pll_a", "pll_p_out1", clk_base, ((void*)0), 0,
       &pll_a_params, ((void*)0));
 clks[TEGRA20_CLK_PLL_A] = clk;


 clk = tegra_clk_register_divider("pll_a_out0_div", "pll_a",
    clk_base + PLLA_OUT, 0, TEGRA_DIVIDER_ROUND_UP,
    8, 8, 1, ((void*)0));
 clk = tegra_clk_register_pll_out("pll_a_out0", "pll_a_out0_div",
    clk_base + PLLA_OUT, 1, 0, CLK_IGNORE_UNUSED |
    CLK_SET_RATE_PARENT, 0, ((void*)0));
 clks[TEGRA20_CLK_PLL_A_OUT0] = clk;


 clk = tegra_clk_register_plle("pll_e", "pll_ref", clk_base, pmc_base,
        0, &pll_e_params, ((void*)0));
 clks[TEGRA20_CLK_PLL_E] = clk;
}
