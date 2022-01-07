
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct clk_unit {int bit; scalar_t__ regofs; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 scalar_t__ SIRFSOC_CLKC_ROOT_CLK_EN0_SET ;
 scalar_t__ SIRFSOC_CLKC_ROOT_CLK_EN0_STAT ;
 int clkc_readl (scalar_t__) ;
 struct clk_unit* to_unitclk (struct clk_hw*) ;

__attribute__((used)) static int unit_clk_is_enabled(struct clk_hw *hw)
{
 struct clk_unit *clk = to_unitclk(hw);
 u32 reg;

 reg = clk->regofs + SIRFSOC_CLKC_ROOT_CLK_EN0_STAT - SIRFSOC_CLKC_ROOT_CLK_EN0_SET;

 return !!(clkc_readl(reg) & BIT(clk->bit));
}
