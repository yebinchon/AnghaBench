
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xen_hvm_post_suspend (int) ;
 scalar_t__ xen_pv_domain () ;
 int xen_pv_post_suspend (int) ;
 int xen_restore_time_memory_area () ;

void xen_arch_post_suspend(int cancelled)
{
 if (xen_pv_domain())
  xen_pv_post_suspend(cancelled);
 else
  xen_hvm_post_suspend(cancelled);

 xen_restore_time_memory_area();
}
