
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_zx_pll {int pd_bit; int reg_base; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 int readl_relaxed (int ) ;
 struct clk_zx_pll* to_clk_zx_pll (struct clk_hw*) ;

__attribute__((used)) static int zx_pll_is_enabled(struct clk_hw *hw)
{
 struct clk_zx_pll *zx_pll = to_clk_zx_pll(hw);
 u32 reg;

 reg = readl_relaxed(zx_pll->reg_base);

 return !(reg & BIT(zx_pll->pd_bit));
}
