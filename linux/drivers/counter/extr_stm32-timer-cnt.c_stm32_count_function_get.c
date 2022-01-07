
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_timer_cnt {int regmap; } ;
struct counter_device {struct stm32_timer_cnt* priv; } ;
struct counter_count {int dummy; } ;


 int EINVAL ;
 size_t STM32_COUNT_ENCODER_MODE_1 ;
 size_t STM32_COUNT_ENCODER_MODE_2 ;
 size_t STM32_COUNT_ENCODER_MODE_3 ;
 int TIM_SMCR ;
 int TIM_SMCR_SMS ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int stm32_count_function_get(struct counter_device *counter,
        struct counter_count *count,
        size_t *function)
{
 struct stm32_timer_cnt *const priv = counter->priv;
 u32 smcr;

 regmap_read(priv->regmap, TIM_SMCR, &smcr);

 switch (smcr & TIM_SMCR_SMS) {
 case 1:
  *function = STM32_COUNT_ENCODER_MODE_1;
  return 0;
 case 2:
  *function = STM32_COUNT_ENCODER_MODE_2;
  return 0;
 case 3:
  *function = STM32_COUNT_ENCODER_MODE_3;
  return 0;
 }

 return -EINVAL;
}
