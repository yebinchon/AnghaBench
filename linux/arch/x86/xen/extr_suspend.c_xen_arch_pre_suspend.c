
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ xen_pv_domain () ;
 int xen_pv_pre_suspend () ;
 int xen_save_time_memory_area () ;

void xen_arch_pre_suspend(void)
{
 xen_save_time_memory_area();

 if (xen_pv_domain())
  xen_pv_pre_suspend();
}
