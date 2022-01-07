
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rt_perfcount_irq ;

int get_c0_perfcount_int(void)
{
 return rt_perfcount_irq;
}
