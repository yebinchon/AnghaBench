
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_lptim_cnt {scalar_t__ polarity; int quadrature_mode; } ;
struct counter_device {struct stm32_lptim_cnt* priv; } ;
struct counter_count {int dummy; } ;


 int EINVAL ;
 size_t STM32_LPTIM_COUNTER_INCREASE ;
 size_t STM32_LPTIM_ENCODER_BOTH_EDGE ;
 scalar_t__ STM32_LPTIM_SYNAPSE_ACTION_BOTH_EDGES ;

__attribute__((used)) static int stm32_lptim_cnt_function_get(struct counter_device *counter,
     struct counter_count *count,
     size_t *function)
{
 struct stm32_lptim_cnt *const priv = counter->priv;

 if (!priv->quadrature_mode) {
  *function = STM32_LPTIM_COUNTER_INCREASE;
  return 0;
 }

 if (priv->polarity == STM32_LPTIM_SYNAPSE_ACTION_BOTH_EDGES) {
  *function = STM32_LPTIM_ENCODER_BOTH_EDGE;
  return 0;
 }

 return -EINVAL;
}
