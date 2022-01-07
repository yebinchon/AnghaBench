
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_lptim_cnt {int enabled; int ceiling; int regmap; int clk; } ;


 int FIELD_PREP (int ,int) ;
 int STM32_LPTIM_ARR ;
 int STM32_LPTIM_CMP ;
 int STM32_LPTIM_CMPOKCF_ARROKCF ;
 int STM32_LPTIM_CMPOK_ARROK ;
 int STM32_LPTIM_CNTSTRT ;
 int STM32_LPTIM_CR ;
 int STM32_LPTIM_ENABLE ;
 int STM32_LPTIM_ICR ;
 int STM32_LPTIM_ISR ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int regmap_read_poll_timeout (int ,int ,int,int,int,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int stm32_lptim_set_enable_state(struct stm32_lptim_cnt *priv,
     int enable)
{
 int ret;
 u32 val;

 val = FIELD_PREP(STM32_LPTIM_ENABLE, enable);
 ret = regmap_write(priv->regmap, STM32_LPTIM_CR, val);
 if (ret)
  return ret;

 if (!enable) {
  clk_disable(priv->clk);
  priv->enabled = 0;
  return 0;
 }


 ret = regmap_write(priv->regmap, STM32_LPTIM_ARR, priv->ceiling);
 if (ret)
  return ret;

 ret = regmap_write(priv->regmap, STM32_LPTIM_CMP, 0);
 if (ret)
  return ret;


 ret = regmap_read_poll_timeout(priv->regmap, STM32_LPTIM_ISR, val,
           (val & STM32_LPTIM_CMPOK_ARROK),
           100, 1000);
 if (ret)
  return ret;

 ret = regmap_write(priv->regmap, STM32_LPTIM_ICR,
      STM32_LPTIM_CMPOKCF_ARROKCF);
 if (ret)
  return ret;

 ret = clk_enable(priv->clk);
 if (ret) {
  regmap_write(priv->regmap, STM32_LPTIM_CR, 0);
  return ret;
 }
 priv->enabled = 1;


 return regmap_update_bits(priv->regmap, STM32_LPTIM_CR,
      STM32_LPTIM_CNTSTRT, STM32_LPTIM_CNTSTRT);
}
