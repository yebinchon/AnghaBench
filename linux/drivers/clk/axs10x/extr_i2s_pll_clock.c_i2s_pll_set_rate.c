
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2s_pll_clk {int dev; } ;
struct i2s_pll_cfg {unsigned long rate; int odiv1; int odiv0; int fbdiv; int idiv; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 int PLL_FBDIV_REG ;
 int PLL_IDIV_REG ;
 int PLL_ODIV0_REG ;
 int PLL_ODIV1_REG ;
 int dev_err (int ,char*,unsigned long,...) ;
 struct i2s_pll_cfg* i2s_pll_get_cfg (unsigned long) ;
 int i2s_pll_write (struct i2s_pll_clk*,int ,int ) ;
 struct i2s_pll_clk* to_i2s_pll_clk (struct clk_hw*) ;

__attribute__((used)) static int i2s_pll_set_rate(struct clk_hw *hw, unsigned long rate,
   unsigned long parent_rate)
{
 struct i2s_pll_clk *clk = to_i2s_pll_clk(hw);
 const struct i2s_pll_cfg *pll_cfg = i2s_pll_get_cfg(parent_rate);
 int i;

 if (!pll_cfg) {
  dev_err(clk->dev, "invalid parent rate=%ld\n", parent_rate);
  return -EINVAL;
 }

 for (i = 0; pll_cfg[i].rate != 0; i++) {
  if (pll_cfg[i].rate == rate) {
   i2s_pll_write(clk, PLL_IDIV_REG, pll_cfg[i].idiv);
   i2s_pll_write(clk, PLL_FBDIV_REG, pll_cfg[i].fbdiv);
   i2s_pll_write(clk, PLL_ODIV0_REG, pll_cfg[i].odiv0);
   i2s_pll_write(clk, PLL_ODIV1_REG, pll_cfg[i].odiv1);
   return 0;
  }
 }

 dev_err(clk->dev, "invalid rate=%ld, parent_rate=%ld\n", rate,
   parent_rate);
 return -EINVAL;
}
