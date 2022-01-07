
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_online (int) ;
 scalar_t__ xen_hvm_domain () ;
 scalar_t__ xen_pv_domain () ;
 int xen_vcpu_info_reset (int) ;
 int xen_vcpu_setup (int) ;

__attribute__((used)) static int xen_vcpu_setup_restore(int cpu)
{
 int rc = 0;


 xen_vcpu_info_reset(cpu);





 if (xen_pv_domain() ||
     (xen_hvm_domain() && cpu_online(cpu))) {
  rc = xen_vcpu_setup(cpu);
 }

 return rc;
}
