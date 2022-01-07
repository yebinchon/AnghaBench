
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clkdiv {scalar_t__ base; int regmap; } ;


 scalar_t__ REG_EN_CTL ;
 unsigned int REG_EN_MASK ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;

__attribute__((used)) static bool is_spmi_pmic_clkdiv_enabled(struct clkdiv *clkdiv)
{
 unsigned int val = 0;

 regmap_read(clkdiv->regmap, clkdiv->base + REG_EN_CTL, &val);

 return val & REG_EN_MASK;
}
