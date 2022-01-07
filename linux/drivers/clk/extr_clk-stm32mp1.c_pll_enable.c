
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_pll_obj {int lock; int reg; } ;
struct clk_hw {int dummy; } ;


 int PLL_ON ;
 int PLL_RDY ;
 unsigned int TIMEOUT ;
 scalar_t__ __pll_is_enabled (struct clk_hw*) ;
 int readl_relaxed (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct stm32_pll_obj* to_pll (struct clk_hw*) ;
 int udelay (int) ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static int pll_enable(struct clk_hw *hw)
{
 struct stm32_pll_obj *clk_elem = to_pll(hw);
 u32 reg;
 unsigned long flags = 0;
 unsigned int timeout = TIMEOUT;
 int bit_status = 0;

 spin_lock_irqsave(clk_elem->lock, flags);

 if (__pll_is_enabled(hw))
  goto unlock;

 reg = readl_relaxed(clk_elem->reg);
 reg |= PLL_ON;
 writel_relaxed(reg, clk_elem->reg);






 do {
  bit_status = !(readl_relaxed(clk_elem->reg) & PLL_RDY);

  if (bit_status)
   udelay(120);

 } while (bit_status && --timeout);

unlock:
 spin_unlock_irqrestore(clk_elem->lock, flags);

 return bit_status;
}
