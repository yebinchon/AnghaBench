
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_timer_cnt {int regmap; int ceiling; } ;
struct counter_device {struct stm32_timer_cnt* priv; } ;
struct counter_count {int dummy; } ;





 int TIM_ARR ;
 int TIM_CR1 ;
 int TIM_CR1_ARPE ;
 int TIM_CR1_CEN ;
 int TIM_EGR ;
 int TIM_EGR_UG ;
 int TIM_SMCR ;
 int TIM_SMCR_SMS ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int stm32_count_function_set(struct counter_device *counter,
        struct counter_count *count,
        size_t function)
{
 struct stm32_timer_cnt *const priv = counter->priv;
 u32 cr1, sms;

 switch (function) {
 case 130:
  sms = 1;
  break;
 case 129:
  sms = 2;
  break;
 case 128:
  sms = 3;
  break;
 default:
  sms = 0;
  break;
 }


 regmap_read(priv->regmap, TIM_CR1, &cr1);

 regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN, 0);


 regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_ARPE, 0);
 regmap_write(priv->regmap, TIM_ARR, priv->ceiling);

 regmap_update_bits(priv->regmap, TIM_SMCR, TIM_SMCR_SMS, sms);


 regmap_update_bits(priv->regmap, TIM_EGR, TIM_EGR_UG, TIM_EGR_UG);


 regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN, cr1);

 return 0;
}
