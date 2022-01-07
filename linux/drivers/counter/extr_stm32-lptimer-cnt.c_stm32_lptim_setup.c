
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_lptim_cnt {int regmap; int polarity; scalar_t__ quadrature_mode; } ;


 int FIELD_PREP (int,int ) ;
 int STM32_LPTIM_CFGR ;
 int STM32_LPTIM_CKPOL ;
 int STM32_LPTIM_COUNTMODE ;
 int STM32_LPTIM_ENC ;
 int STM32_LPTIM_PRESC ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int stm32_lptim_setup(struct stm32_lptim_cnt *priv, int enable)
{
 u32 mask = STM32_LPTIM_ENC | STM32_LPTIM_COUNTMODE |
     STM32_LPTIM_CKPOL | STM32_LPTIM_PRESC;
 u32 val;


 if (priv->quadrature_mode)
  val = enable ? STM32_LPTIM_ENC : 0;
 else
  val = enable ? STM32_LPTIM_COUNTMODE : 0;
 val |= FIELD_PREP(STM32_LPTIM_CKPOL, enable ? priv->polarity : 0);

 return regmap_update_bits(priv->regmap, STM32_LPTIM_CFGR, mask, val);
}
