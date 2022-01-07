
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_pll_obj {int lock; } ;
struct clk_hw {int dummy; } ;


 int __pll_is_enabled (struct clk_hw*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct stm32_pll_obj* to_pll (struct clk_hw*) ;

__attribute__((used)) static int pll_is_enabled(struct clk_hw *hw)
{
 struct stm32_pll_obj *clk_elem = to_pll(hw);
 unsigned long flags = 0;
 int ret;

 spin_lock_irqsave(clk_elem->lock, flags);
 ret = __pll_is_enabled(hw);
 spin_unlock_irqrestore(clk_elem->lock, flags);

 return ret;
}
