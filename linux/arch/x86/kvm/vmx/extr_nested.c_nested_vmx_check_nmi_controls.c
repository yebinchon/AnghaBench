
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcs12 {int dummy; } ;


 scalar_t__ CC (int) ;
 int CPU_BASED_VIRTUAL_NMI_PENDING ;
 int EINVAL ;
 scalar_t__ nested_cpu_has (struct vmcs12*,int ) ;
 int nested_cpu_has_nmi_exiting (struct vmcs12*) ;
 scalar_t__ nested_cpu_has_virtual_nmis (struct vmcs12*) ;

__attribute__((used)) static int nested_vmx_check_nmi_controls(struct vmcs12 *vmcs12)
{
 if (CC(!nested_cpu_has_nmi_exiting(vmcs12) &&
        nested_cpu_has_virtual_nmis(vmcs12)))
  return -EINVAL;

 if (CC(!nested_cpu_has_virtual_nmis(vmcs12) &&
        nested_cpu_has(vmcs12, CPU_BASED_VIRTUAL_NMI_PENDING)))
  return -EINVAL;

 return 0;
}
