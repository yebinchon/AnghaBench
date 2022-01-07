
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_sccg_pll_setup {int divq; int vco2; int vco1; int divr2; int divf2; int fout; int bypass; } ;


 int EINVAL ;
 int PLL_BYPASS1 ;
 int PLL_DIVQ_MAX ;
 int PLL_STAGE2_MAX_FREQ ;
 int PLL_STAGE2_MIN_FREQ ;
 int clk_sccg_pll2_check_match (struct clk_sccg_pll_setup*,struct clk_sccg_pll_setup*) ;
 int do_div (int,int) ;

__attribute__((used)) static int clk_sccg_divq_lookup(struct clk_sccg_pll_setup *setup,
    struct clk_sccg_pll_setup *temp_setup)
{
 int ret = -EINVAL;

 for (temp_setup->divq = 0; temp_setup->divq <= PLL_DIVQ_MAX;
      temp_setup->divq++) {
  temp_setup->vco2 = temp_setup->vco1;
  do_div(temp_setup->vco2, temp_setup->divr2 + 1);
  temp_setup->vco2 *= 2;
  temp_setup->vco2 *= temp_setup->divf2 + 1;
  if (temp_setup->vco2 >= PLL_STAGE2_MIN_FREQ &&
    temp_setup->vco2 <= PLL_STAGE2_MAX_FREQ) {
   temp_setup->fout = temp_setup->vco2;
   do_div(temp_setup->fout, 2 * (temp_setup->divq + 1));

   ret = clk_sccg_pll2_check_match(setup, temp_setup);
   if (!ret) {
    temp_setup->bypass = PLL_BYPASS1;
    return ret;
   }
  }
 }

 return ret;
}
