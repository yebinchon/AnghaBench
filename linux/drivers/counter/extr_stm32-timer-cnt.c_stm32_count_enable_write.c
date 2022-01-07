
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_timer_cnt {int clk; int regmap; } ;
struct counter_device {struct stm32_timer_cnt* priv; } ;
struct counter_count {int dummy; } ;
typedef int ssize_t ;


 int TIM_CR1 ;
 int TIM_CR1_CEN ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int kstrtobool (char const*,int*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static ssize_t stm32_count_enable_write(struct counter_device *counter,
     struct counter_count *count,
     void *private,
     const char *buf, size_t len)
{
 struct stm32_timer_cnt *const priv = counter->priv;
 int err;
 u32 cr1;
 bool enable;

 err = kstrtobool(buf, &enable);
 if (err)
  return err;

 if (enable) {
  regmap_read(priv->regmap, TIM_CR1, &cr1);
   if (!(cr1 & TIM_CR1_CEN))
    clk_enable(priv->clk);

  regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN,
       TIM_CR1_CEN);
 } else {
  regmap_read(priv->regmap, TIM_CR1, &cr1);
  regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN, 0);
  if (cr1 & TIM_CR1_CEN)
   clk_disable(priv->clk);
 }

 return len;
}
