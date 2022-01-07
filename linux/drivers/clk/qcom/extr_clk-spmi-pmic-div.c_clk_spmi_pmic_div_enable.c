
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clkdiv {int lock; } ;
struct clk_hw {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int spmi_pmic_clkdiv_set_enable_state (struct clkdiv*,int) ;
 struct clkdiv* to_clkdiv (struct clk_hw*) ;

__attribute__((used)) static int clk_spmi_pmic_div_enable(struct clk_hw *hw)
{
 struct clkdiv *clkdiv = to_clkdiv(hw);
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&clkdiv->lock, flags);
 ret = spmi_pmic_clkdiv_set_enable_state(clkdiv, 1);
 spin_unlock_irqrestore(&clkdiv->lock, flags);

 return ret;
}
