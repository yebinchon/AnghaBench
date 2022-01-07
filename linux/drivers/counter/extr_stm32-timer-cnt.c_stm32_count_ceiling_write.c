
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_timer_cnt {unsigned int ceiling; int regmap; } ;
struct counter_device {struct stm32_timer_cnt* priv; } ;
struct counter_count {int dummy; } ;
typedef int ssize_t ;


 int TIM_ARR ;
 int TIM_CR1 ;
 int TIM_CR1_ARPE ;
 int kstrtouint (char const*,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static ssize_t stm32_count_ceiling_write(struct counter_device *counter,
      struct counter_count *count,
      void *private,
      const char *buf, size_t len)
{
 struct stm32_timer_cnt *const priv = counter->priv;
 unsigned int ceiling;
 int ret;

 ret = kstrtouint(buf, 0, &ceiling);
 if (ret)
  return ret;


 regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_ARPE, 0);
 regmap_write(priv->regmap, TIM_ARR, ceiling);

 priv->ceiling = ceiling;
 return len;
}
