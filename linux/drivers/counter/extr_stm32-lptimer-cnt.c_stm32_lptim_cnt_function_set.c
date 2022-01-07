
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_lptim_cnt {int quadrature_mode; int polarity; } ;
struct counter_device {struct stm32_lptim_cnt* priv; } ;
struct counter_count {int dummy; } ;


 int EBUSY ;
 int EINVAL ;


 int STM32_LPTIM_SYNAPSE_ACTION_BOTH_EDGES ;
 scalar_t__ stm32_lptim_is_enabled (struct stm32_lptim_cnt* const) ;

__attribute__((used)) static int stm32_lptim_cnt_function_set(struct counter_device *counter,
     struct counter_count *count,
     size_t function)
{
 struct stm32_lptim_cnt *const priv = counter->priv;

 if (stm32_lptim_is_enabled(priv))
  return -EBUSY;

 switch (function) {
 case 129:
  priv->quadrature_mode = 0;
  return 0;
 case 128:
  priv->quadrature_mode = 1;
  priv->polarity = STM32_LPTIM_SYNAPSE_ACTION_BOTH_EDGES;
  return 0;
 }

 return -EINVAL;
}
