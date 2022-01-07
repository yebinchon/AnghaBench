
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int __hlwd_pic_get_irq (int ) ;
 int hlwd_irq_host ;

unsigned int hlwd_pic_get_irq(void)
{
 return __hlwd_pic_get_irq(hlwd_irq_host);
}
