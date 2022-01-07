
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_mmc {scalar_t__ id; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ HI3620_MMC_CIUCLK1 ;
 int mmc_clk_set_timing (struct clk_hw*,unsigned long) ;
 struct clk_mmc* to_mmc (struct clk_hw*) ;

__attribute__((used)) static int mmc_clk_prepare(struct clk_hw *hw)
{
 struct clk_mmc *mclk = to_mmc(hw);
 unsigned long rate;

 if (mclk->id == HI3620_MMC_CIUCLK1)
  rate = 13000000;
 else
  rate = 25000000;

 return mmc_clk_set_timing(hw, rate);
}
