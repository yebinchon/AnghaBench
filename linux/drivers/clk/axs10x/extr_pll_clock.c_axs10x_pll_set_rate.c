
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct axs10x_pll_clk {int dev; int lock; struct axs10x_pll_cfg* pll_cfg; } ;
struct axs10x_pll_cfg {unsigned long rate; int odiv; int fbdiv; int idiv; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int PLL_ERROR ;
 int PLL_LOCK ;
 int PLL_MAX_LOCK_TIME ;
 int PLL_REG_FBDIV ;
 int PLL_REG_IDIV ;
 int PLL_REG_ODIV ;
 int axs10x_encode_div (int ,int) ;
 int axs10x_pll_write (struct axs10x_pll_clk*,int ,int ) ;
 int dev_err (int ,char*,unsigned long,unsigned long) ;
 int ioread32 (int ) ;
 struct axs10x_pll_clk* to_axs10x_pll_clk (struct clk_hw*) ;
 int udelay (int ) ;

__attribute__((used)) static int axs10x_pll_set_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long parent_rate)
{
 int i;
 struct axs10x_pll_clk *clk = to_axs10x_pll_clk(hw);
 const struct axs10x_pll_cfg *pll_cfg = clk->pll_cfg;

 for (i = 0; pll_cfg[i].rate != 0; i++) {
  if (pll_cfg[i].rate == rate) {
   axs10x_pll_write(clk, PLL_REG_IDIV,
      axs10x_encode_div(pll_cfg[i].idiv, 0));
   axs10x_pll_write(clk, PLL_REG_FBDIV,
      axs10x_encode_div(pll_cfg[i].fbdiv, 0));
   axs10x_pll_write(clk, PLL_REG_ODIV,
      axs10x_encode_div(pll_cfg[i].odiv, 1));





   udelay(PLL_MAX_LOCK_TIME);
   if (!(ioread32(clk->lock) & PLL_LOCK))
    return -ETIMEDOUT;

   if (ioread32(clk->lock) & PLL_ERROR)
    return -EINVAL;

   return 0;
  }
 }

 dev_err(clk->dev, "invalid rate=%ld, parent_rate=%ld\n", rate,
   parent_rate);
 return -EINVAL;
}
