
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_clk_pll {scalar_t__ lock; } ;
struct clk_hw {int dummy; } ;


 int _clk_pll_disable (struct clk_hw*) ;
 int pll_clk_stop_ss (struct tegra_clk_pll*) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct tegra_clk_pll* to_clk_pll (struct clk_hw*) ;

__attribute__((used)) static void clk_pll_disable(struct clk_hw *hw)
{
 struct tegra_clk_pll *pll = to_clk_pll(hw);
 unsigned long flags = 0;

 if (pll->lock)
  spin_lock_irqsave(pll->lock, flags);

 pll_clk_stop_ss(pll);

 _clk_pll_disable(hw);

 if (pll->lock)
  spin_unlock_irqrestore(pll->lock, flags);
}
