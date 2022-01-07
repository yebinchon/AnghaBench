
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_pll_obj {int lock; int reg; } ;
struct clk_hw {int dummy; } ;


 int PLL_ON ;
 int readl_relaxed (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct stm32_pll_obj* to_pll (struct clk_hw*) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static void pll_disable(struct clk_hw *hw)
{
 struct stm32_pll_obj *clk_elem = to_pll(hw);
 u32 reg;
 unsigned long flags = 0;

 spin_lock_irqsave(clk_elem->lock, flags);

 reg = readl_relaxed(clk_elem->reg);
 reg &= ~PLL_ON;
 writel_relaxed(reg, clk_elem->reg);

 spin_unlock_irqrestore(clk_elem->lock, flags);
}
