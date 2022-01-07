
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_sccg_pll_setup {scalar_t__ divf2; } ;


 int EINVAL ;
 scalar_t__ PLL_DIVF2_MAX ;
 int clk_sccg_divq_lookup (struct clk_sccg_pll_setup*,struct clk_sccg_pll_setup*) ;

__attribute__((used)) static int clk_sccg_divf2_lookup(struct clk_sccg_pll_setup *setup,
     struct clk_sccg_pll_setup *temp_setup)
{
 int ret = -EINVAL;

 for (temp_setup->divf2 = 0; temp_setup->divf2 <= PLL_DIVF2_MAX;
      temp_setup->divf2++) {
  ret = clk_sccg_divq_lookup(setup, temp_setup);
  if (!ret)
   return ret;
 }

 return ret;
}
