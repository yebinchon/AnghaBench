
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct clk_sccg_pll_setup {scalar_t__ divf1; int ref; int bypass; scalar_t__ divr1; } ;


 int EINVAL ;
 int PLL_BYPASS_NONE ;
 scalar_t__ PLL_DIVF1_MAX ;
 int clk_sccg_pll2_find_setup (struct clk_sccg_pll_setup*,struct clk_sccg_pll_setup*,int) ;
 int do_div (int,scalar_t__) ;

__attribute__((used)) static int clk_sccg_divf1_lookup(struct clk_sccg_pll_setup *setup,
    struct clk_sccg_pll_setup *temp_setup)
{
 int ret = -EINVAL;

 for (temp_setup->divf1 = 0; temp_setup->divf1 <= PLL_DIVF1_MAX;
      temp_setup->divf1++) {
  uint64_t vco1 = temp_setup->ref;

  do_div(vco1, temp_setup->divr1 + 1);
  vco1 *= 2;
  vco1 *= temp_setup->divf1 + 1;

  ret = clk_sccg_pll2_find_setup(setup, temp_setup, vco1);
  if (!ret) {
   temp_setup->bypass = PLL_BYPASS_NONE;
   return ret;
  }
 }

 return ret;
}
