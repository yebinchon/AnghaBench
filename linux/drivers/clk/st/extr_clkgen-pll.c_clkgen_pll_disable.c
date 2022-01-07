
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clkgen_pll {scalar_t__ lock; } ;
struct clk_hw {int dummy; } ;


 int __clkgen_pll_disable (struct clk_hw*) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct clkgen_pll* to_clkgen_pll (struct clk_hw*) ;

__attribute__((used)) static void clkgen_pll_disable(struct clk_hw *hw)
{
 struct clkgen_pll *pll = to_clkgen_pll(hw);
 unsigned long flags = 0;

 if (pll->lock)
  spin_lock_irqsave(pll->lock, flags);

 __clkgen_pll_disable(hw);

 if (pll->lock)
  spin_unlock_irqrestore(pll->lock, flags);
}
