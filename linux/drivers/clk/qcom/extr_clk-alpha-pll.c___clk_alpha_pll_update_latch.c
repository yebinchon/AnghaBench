
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int regmap; } ;
struct clk_alpha_pll {TYPE_1__ clkr; } ;


 int PLL_MODE (struct clk_alpha_pll*) ;
 int PLL_UPDATE ;
 int PLL_UPDATE_BYPASS ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int udelay (int) ;
 int wait_for_pll_update (struct clk_alpha_pll*) ;
 int wait_for_pll_update_ack_clear (struct clk_alpha_pll*) ;
 int wait_for_pll_update_ack_set (struct clk_alpha_pll*) ;

__attribute__((used)) static int __clk_alpha_pll_update_latch(struct clk_alpha_pll *pll)
{
 int ret;
 u32 mode;

 regmap_read(pll->clkr.regmap, PLL_MODE(pll), &mode);


 regmap_update_bits(pll->clkr.regmap, PLL_MODE(pll), PLL_UPDATE,
      PLL_UPDATE);


 udelay(1);
 if (mode & PLL_UPDATE_BYPASS) {
  ret = wait_for_pll_update_ack_set(pll);
  if (ret)
   return ret;

  regmap_update_bits(pll->clkr.regmap, PLL_MODE(pll), PLL_UPDATE, 0);
 } else {
  ret = wait_for_pll_update(pll);
  if (ret)
   return ret;
 }

 ret = wait_for_pll_update_ack_clear(pll);
 if (ret)
  return ret;


 udelay(10);

 return 0;
}
