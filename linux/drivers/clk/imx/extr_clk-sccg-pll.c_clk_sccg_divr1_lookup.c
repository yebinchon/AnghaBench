
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_sccg_pll_setup {scalar_t__ divr1; scalar_t__ ref_div1; scalar_t__ ref; } ;


 int EINVAL ;
 scalar_t__ PLL_DIVR1_MAX ;
 scalar_t__ PLL_STAGE1_REF_MAX_FREQ ;
 scalar_t__ PLL_STAGE1_REF_MIN_FREQ ;
 int clk_sccg_divf1_lookup (struct clk_sccg_pll_setup*,struct clk_sccg_pll_setup*) ;
 int do_div (scalar_t__,scalar_t__) ;

__attribute__((used)) static int clk_sccg_divr1_lookup(struct clk_sccg_pll_setup *setup,
    struct clk_sccg_pll_setup *temp_setup)
{
 int ret = -EINVAL;

 for (temp_setup->divr1 = 0; temp_setup->divr1 <= PLL_DIVR1_MAX;
      temp_setup->divr1++) {
  temp_setup->ref_div1 = temp_setup->ref;
  do_div(temp_setup->ref_div1, temp_setup->divr1 + 1);
  if (temp_setup->ref_div1 >= PLL_STAGE1_REF_MIN_FREQ &&
      temp_setup->ref_div1 <= PLL_STAGE1_REF_MAX_FREQ) {
   ret = clk_sccg_divf1_lookup(setup, temp_setup);
   if (!ret)
    return ret;
  }
 }

 return ret;
}
