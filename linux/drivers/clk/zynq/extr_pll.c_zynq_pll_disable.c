
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zynq_pll {int lock; int pll_ctrl; } ;
struct clk_hw {int dummy; } ;


 int PLLCTRL_PWRDWN_MASK ;
 int PLLCTRL_RESET_MASK ;
 int pr_info (char*) ;
 int readl (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct zynq_pll* to_zynq_pll (struct clk_hw*) ;
 int writel (int,int ) ;
 int zynq_pll_is_enabled (struct clk_hw*) ;

__attribute__((used)) static void zynq_pll_disable(struct clk_hw *hw)
{
 unsigned long flags = 0;
 u32 reg;
 struct zynq_pll *clk = to_zynq_pll(hw);

 if (!zynq_pll_is_enabled(hw))
  return;

 pr_info("PLL: shutdown\n");


 spin_lock_irqsave(clk->lock, flags);

 reg = readl(clk->pll_ctrl);
 reg |= PLLCTRL_RESET_MASK | PLLCTRL_PWRDWN_MASK;
 writel(reg, clk->pll_ctrl);

 spin_unlock_irqrestore(clk->lock, flags);
}
