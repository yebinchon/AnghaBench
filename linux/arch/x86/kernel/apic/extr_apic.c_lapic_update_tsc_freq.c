
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __lapic_update_tsc_freq ;
 int on_each_cpu (int ,int *,int ) ;

void lapic_update_tsc_freq(void)
{





 on_each_cpu(__lapic_update_tsc_freq, ((void*)0), 0);
}
