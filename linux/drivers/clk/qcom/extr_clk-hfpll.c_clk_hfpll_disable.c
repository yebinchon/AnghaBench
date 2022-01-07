
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_hfpll {int lock; } ;


 int __clk_hfpll_disable (struct clk_hfpll*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct clk_hfpll* to_clk_hfpll (struct clk_hw*) ;

__attribute__((used)) static void clk_hfpll_disable(struct clk_hw *hw)
{
 struct clk_hfpll *h = to_clk_hfpll(hw);
 unsigned long flags;

 spin_lock_irqsave(&h->lock, flags);
 __clk_hfpll_disable(h);
 spin_unlock_irqrestore(&h->lock, flags);
}
