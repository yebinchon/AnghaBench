
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef unsigned long u32 ;
struct clk_hw {int dummy; } ;
struct axs10x_pll_clk {int dummy; } ;


 int PLL_REG_FBDIV ;
 int PLL_REG_IDIV ;
 int PLL_REG_ODIV ;
 unsigned long axs10x_div_get_value (int ) ;
 int axs10x_pll_read (struct axs10x_pll_clk*,int ) ;
 int do_div (unsigned long,unsigned long) ;
 struct axs10x_pll_clk* to_axs10x_pll_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long axs10x_pll_recalc_rate(struct clk_hw *hw,
         unsigned long parent_rate)
{
 u64 rate;
 u32 idiv, fbdiv, odiv;
 struct axs10x_pll_clk *clk = to_axs10x_pll_clk(hw);

 idiv = axs10x_div_get_value(axs10x_pll_read(clk, PLL_REG_IDIV));
 fbdiv = axs10x_div_get_value(axs10x_pll_read(clk, PLL_REG_FBDIV));
 odiv = axs10x_div_get_value(axs10x_pll_read(clk, PLL_REG_ODIV));

 rate = (u64)parent_rate * fbdiv;
 do_div(rate, idiv * odiv);

 return rate;
}
