
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_lptim_cnt {int regmap; } ;


 int FIELD_GET (int ,int ) ;
 int STM32_LPTIM_CR ;
 int STM32_LPTIM_ENABLE ;
 int regmap_read (int ,int ,int *) ;

__attribute__((used)) static int stm32_lptim_is_enabled(struct stm32_lptim_cnt *priv)
{
 u32 val;
 int ret;

 ret = regmap_read(priv->regmap, STM32_LPTIM_CR, &val);
 if (ret)
  return ret;

 return FIELD_GET(STM32_LPTIM_ENABLE, val);
}
