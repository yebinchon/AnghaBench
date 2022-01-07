
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_dmn {int regofs; } ;


 int BIT (int) ;
 int clkc_readl (int ) ;
 struct clk_dmn* to_dmnclk (struct clk_hw*) ;

__attribute__((used)) static unsigned long dmn_clk_recalc_rate(struct clk_hw *hw,
 unsigned long parent_rate)

{
 unsigned long fin = parent_rate;
 struct clk_dmn *clk = to_dmnclk(hw);

 u32 cfg = clkc_readl(clk->regofs);

 if (cfg & BIT(24)) {

  return fin;
 } else {



  u32 wait = (cfg >> 16) & (BIT(4) - 1);
  u32 hold = (cfg >> 20) & (BIT(4) - 1);

  return fin / (wait + hold + 2);
 }
}
