
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2s_pll_clk {int dummy; } ;
struct clk_hw {int dummy; } ;


 int PLL_FBDIV_REG ;
 int PLL_IDIV_REG ;
 int PLL_ODIV0_REG ;
 unsigned int i2s_pll_get_value (int ) ;
 int i2s_pll_read (struct i2s_pll_clk*,int ) ;
 struct i2s_pll_clk* to_i2s_pll_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long i2s_pll_recalc_rate(struct clk_hw *hw,
   unsigned long parent_rate)
{
 struct i2s_pll_clk *clk = to_i2s_pll_clk(hw);
 unsigned int idiv, fbdiv, odiv;

 idiv = i2s_pll_get_value(i2s_pll_read(clk, PLL_IDIV_REG));
 fbdiv = i2s_pll_get_value(i2s_pll_read(clk, PLL_FBDIV_REG));
 odiv = i2s_pll_get_value(i2s_pll_read(clk, PLL_ODIV0_REG));

 return ((parent_rate / idiv) * fbdiv) / odiv;
}
