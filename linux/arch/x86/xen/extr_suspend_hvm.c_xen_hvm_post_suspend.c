
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xen_callback_vector () ;
 int xen_hvm_init_shared_info () ;
 int xen_unplug_emulated_devices () ;
 int xen_vcpu_restore () ;

void xen_hvm_post_suspend(int suspend_cancelled)
{
 if (!suspend_cancelled) {
  xen_hvm_init_shared_info();
  xen_vcpu_restore();
 }
 xen_callback_vector();
 xen_unplug_emulated_devices();
}
