
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_lptim_cnt {int dummy; } ;
struct counter_device {struct stm32_lptim_cnt* priv; } ;
struct counter_count {int dummy; } ;
typedef int ssize_t ;


 int stm32_lptim_cnt_get_ceiling (struct stm32_lptim_cnt* const,char*) ;

__attribute__((used)) static ssize_t stm32_lptim_cnt_ceiling_read(struct counter_device *counter,
         struct counter_count *count,
         void *private, char *buf)
{
 struct stm32_lptim_cnt *const priv = counter->priv;

 return stm32_lptim_cnt_get_ceiling(priv, buf);
}
