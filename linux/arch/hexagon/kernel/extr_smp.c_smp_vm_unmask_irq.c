
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __vmintop_locen (long) ;

void smp_vm_unmask_irq(void *info)
{
 __vmintop_locen((long) info);
}
