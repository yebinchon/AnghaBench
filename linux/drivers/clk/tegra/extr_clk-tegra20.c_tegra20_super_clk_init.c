
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ CCLK_BURST_POLICY ;
 int CLK_IS_CRITICAL ;
 int CLK_SET_RATE_PARENT ;
 scalar_t__ SCLK_BURST_POLICY ;
 size_t TEGRA20_CLK_CCLK ;
 size_t TEGRA20_CLK_SCLK ;
 size_t TEGRA20_CLK_TWD ;
 int cclk_parents ;
 scalar_t__ clk_base ;
 struct clk* clk_register_fixed_factor (int *,char*,char*,int ,int,int) ;
 struct clk** clks ;
 int sclk_parents ;
 struct clk* tegra_clk_register_super_mux (char*,int ,int ,int,scalar_t__,int ,int,int ,int ,int *) ;

__attribute__((used)) static void tegra20_super_clk_init(void)
{
 struct clk *clk;


 clk = tegra_clk_register_super_mux("cclk", cclk_parents,
         ARRAY_SIZE(cclk_parents), CLK_SET_RATE_PARENT,
         clk_base + CCLK_BURST_POLICY, 0, 4, 0, 0, ((void*)0));
 clks[TEGRA20_CLK_CCLK] = clk;


 clk = tegra_clk_register_super_mux("sclk", sclk_parents,
         ARRAY_SIZE(sclk_parents),
         CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
         clk_base + SCLK_BURST_POLICY, 0, 4, 0, 0, ((void*)0));
 clks[TEGRA20_CLK_SCLK] = clk;


 clk = clk_register_fixed_factor(((void*)0), "twd", "cclk", 0, 1, 4);
 clks[TEGRA20_CLK_TWD] = clk;
}
