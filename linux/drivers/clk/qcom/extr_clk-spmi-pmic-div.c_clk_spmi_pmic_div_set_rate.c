
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clkdiv {int lock; scalar_t__ base; int regmap; } ;
struct clk_hw {int dummy; } ;


 int DIV_CTL1_DIV_FACTOR_MASK ;
 scalar_t__ REG_DIV_CTL1 ;
 int __spmi_pmic_clkdiv_set_enable_state (struct clkdiv*,int,unsigned int) ;
 unsigned int div_to_div_factor (unsigned long) ;
 int is_spmi_pmic_clkdiv_enabled (struct clkdiv*) ;
 int regmap_update_bits (int ,scalar_t__,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int spmi_pmic_clkdiv_set_enable_state (struct clkdiv*,int) ;
 struct clkdiv* to_clkdiv (struct clk_hw*) ;

__attribute__((used)) static int clk_spmi_pmic_div_set_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long parent_rate)
{
 struct clkdiv *clkdiv = to_clkdiv(hw);
 unsigned int div_factor = div_to_div_factor(parent_rate / rate);
 unsigned long flags;
 bool enabled;
 int ret;

 spin_lock_irqsave(&clkdiv->lock, flags);
 enabled = is_spmi_pmic_clkdiv_enabled(clkdiv);
 if (enabled) {
  ret = spmi_pmic_clkdiv_set_enable_state(clkdiv, 0);
  if (ret)
   goto unlock;
 }

 ret = regmap_update_bits(clkdiv->regmap, clkdiv->base + REG_DIV_CTL1,
     DIV_CTL1_DIV_FACTOR_MASK, div_factor);
 if (ret)
  goto unlock;

 if (enabled)
  ret = __spmi_pmic_clkdiv_set_enable_state(clkdiv, 1,
         div_factor);

unlock:
 spin_unlock_irqrestore(&clkdiv->lock, flags);

 return ret;
}
