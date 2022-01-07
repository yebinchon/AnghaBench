
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
 int TIM_ARR ;
 int regmap_read (int ,int ,int*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t stm32_count_ceiling_read(struct counter_device *counter,
     struct counter_count *count,
     void *private, char *buf)
{
 struct stm32_timer_cnt *const priv = counter->priv;
 u32 arr;

 regmap_read(priv->regmap, TIM_ARR, &arr);

 return snprintf(buf, PAGE_SIZE, "%u\n", arr);
}
