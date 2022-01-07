
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_sccg_pll_setup {int fout; int fout_request; int fout_error; } ;


 scalar_t__ abs (int) ;
 int memcpy (struct clk_sccg_pll_setup*,struct clk_sccg_pll_setup*,int) ;

__attribute__((used)) static int clk_sccg_pll2_check_match(struct clk_sccg_pll_setup *setup,
     struct clk_sccg_pll_setup *temp_setup)
{
 int new_diff = temp_setup->fout - temp_setup->fout_request;
 int diff = temp_setup->fout_error;

 if (abs(diff) > abs(new_diff)) {
  temp_setup->fout_error = new_diff;
  memcpy(setup, temp_setup, sizeof(struct clk_sccg_pll_setup));

  if (temp_setup->fout_request == temp_setup->fout)
   return 0;
 }
 return -1;
}
