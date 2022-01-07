
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
struct clk_sccg_pll_setup {int bypass; void* fout; void* fout_request; int fout_error; } ;


 int EINVAL ;



 int PLL_OUT_MAX_FREQ ;
 int clk_sccg_pll1_find_setup (struct clk_sccg_pll_setup*,struct clk_sccg_pll_setup*,void*) ;
 int clk_sccg_pll2_find_setup (struct clk_sccg_pll_setup*,struct clk_sccg_pll_setup*,void*) ;
 int memset (struct clk_sccg_pll_setup*,int ,int) ;

__attribute__((used)) static int clk_sccg_pll_find_setup(struct clk_sccg_pll_setup *setup,
     uint64_t prate,
     uint64_t rate, int try_bypass)
{
 struct clk_sccg_pll_setup temp_setup;
 int ret = -EINVAL;

 memset(&temp_setup, 0, sizeof(struct clk_sccg_pll_setup));
 memset(setup, 0, sizeof(struct clk_sccg_pll_setup));

 temp_setup.fout_error = PLL_OUT_MAX_FREQ;
 temp_setup.fout_request = rate;

 switch (try_bypass) {

 case 129:
  if (prate == rate) {
   setup->bypass = 129;
   setup->fout = rate;
   ret = 0;
  }
  break;

 case 130:
  ret = clk_sccg_pll2_find_setup(setup, &temp_setup, prate);
  break;

 case 128:
  ret = clk_sccg_pll1_find_setup(setup, &temp_setup, prate);
  break;
 }

 return ret;
}
