
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_lptim_cnt {int regmap; } ;
struct counter_device {struct stm32_lptim_cnt* priv; } ;
struct counter_count_read_value {int dummy; } ;
struct counter_count {int dummy; } ;


 int COUNTER_COUNT_POSITION ;
 int STM32_LPTIM_CNT ;
 int counter_count_read_value_set (struct counter_count_read_value*,int ,int *) ;
 int regmap_read (int ,int ,int *) ;

__attribute__((used)) static int stm32_lptim_cnt_read(struct counter_device *counter,
    struct counter_count *count,
    struct counter_count_read_value *val)
{
 struct stm32_lptim_cnt *const priv = counter->priv;
 u32 cnt;
 int ret;

 ret = regmap_read(priv->regmap, STM32_LPTIM_CNT, &cnt);
 if (ret)
  return ret;

 counter_count_read_value_set(val, COUNTER_COUNT_POSITION, &cnt);

 return 0;
}
