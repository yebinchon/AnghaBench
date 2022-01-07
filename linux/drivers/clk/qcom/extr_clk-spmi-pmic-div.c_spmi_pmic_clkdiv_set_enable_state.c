
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clkdiv {scalar_t__ base; int regmap; } ;


 unsigned int DIV_CTL1_DIV_FACTOR_MASK ;
 scalar_t__ REG_DIV_CTL1 ;
 int __spmi_pmic_clkdiv_set_enable_state (struct clkdiv*,int,unsigned int) ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;

__attribute__((used)) static int spmi_pmic_clkdiv_set_enable_state(struct clkdiv *clkdiv, bool enable)
{
 unsigned int div_factor;

 regmap_read(clkdiv->regmap, clkdiv->base + REG_DIV_CTL1, &div_factor);
 div_factor &= DIV_CTL1_DIV_FACTOR_MASK;

 return __spmi_pmic_clkdiv_set_enable_state(clkdiv, enable, div_factor);
}
