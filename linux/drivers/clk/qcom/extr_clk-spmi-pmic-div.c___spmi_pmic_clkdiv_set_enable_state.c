
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clkdiv {unsigned int cxo_period_ns; scalar_t__ base; int regmap; } ;


 scalar_t__ REG_EN_CTL ;
 int REG_EN_MASK ;
 unsigned int div_factor_to_div (unsigned int) ;
 int ndelay (int) ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static int
__spmi_pmic_clkdiv_set_enable_state(struct clkdiv *clkdiv, bool enable,
        unsigned int div_factor)
{
 int ret;
 unsigned int ns = clkdiv->cxo_period_ns;
 unsigned int div = div_factor_to_div(div_factor);

 ret = regmap_update_bits(clkdiv->regmap, clkdiv->base + REG_EN_CTL,
     REG_EN_MASK, enable ? REG_EN_MASK : 0);
 if (ret)
  return ret;

 if (enable)
  ndelay((2 + 3 * div) * ns);
 else
  ndelay(3 * div * ns);

 return 0;
}
