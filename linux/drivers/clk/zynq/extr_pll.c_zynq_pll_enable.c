
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zynq_pll {int lockbit; int lock; int pll_status; int pll_ctrl; } ;
struct clk_hw {int dummy; } ;


 int PLLCTRL_PWRDWN_MASK ;
 int PLLCTRL_RESET_MASK ;
 int pr_info (char*) ;
 int readl (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct zynq_pll* to_zynq_pll (struct clk_hw*) ;
 int writel (int,int ) ;
 scalar_t__ zynq_pll_is_enabled (struct clk_hw*) ;

__attribute__((used)) static int zynq_pll_enable(struct clk_hw *hw)
{
 unsigned long flags = 0;
 u32 reg;
 struct zynq_pll *clk = to_zynq_pll(hw);

 if (zynq_pll_is_enabled(hw))
  return 0;

 pr_info("PLL: enable\n");


 spin_lock_irqsave(clk->lock, flags);

 reg = readl(clk->pll_ctrl);
 reg &= ~(PLLCTRL_RESET_MASK | PLLCTRL_PWRDWN_MASK);
 writel(reg, clk->pll_ctrl);
 while (!(readl(clk->pll_status) & (1 << clk->lockbit)))
  ;

 spin_unlock_irqrestore(clk->lock, flags);

 return 0;
}
