
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int NULL_IRQ_NONE ;
 int NULL_IRQ_TIMER ;
 int g_irqmode ;
 int null_param_store_val (char const*,int *,int ,int ) ;

__attribute__((used)) static int null_set_irqmode(const char *str, const struct kernel_param *kp)
{
 return null_param_store_val(str, &g_irqmode, NULL_IRQ_NONE,
     NULL_IRQ_TIMER);
}
