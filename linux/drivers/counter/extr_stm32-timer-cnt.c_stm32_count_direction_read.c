
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_timer_cnt {int regmap; } ;
struct counter_device {struct stm32_timer_cnt* priv; } ;
struct counter_count {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int TIM_CR1 ;
 int TIM_CR1_DIR ;
 int regmap_read (int ,int ,int*) ;
 int scnprintf (char*,int ,char*,char const*) ;

__attribute__((used)) static ssize_t stm32_count_direction_read(struct counter_device *counter,
          struct counter_count *count,
          void *private, char *buf)
{
 struct stm32_timer_cnt *const priv = counter->priv;
 const char *direction;
 u32 cr1;

 regmap_read(priv->regmap, TIM_CR1, &cr1);
 direction = (cr1 & TIM_CR1_DIR) ? "backward" : "forward";

 return scnprintf(buf, PAGE_SIZE, "%s\n", direction);
}
