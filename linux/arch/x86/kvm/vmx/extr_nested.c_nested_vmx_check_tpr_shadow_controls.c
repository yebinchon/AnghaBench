
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcs12 {int virtual_apic_page_addr; } ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ CC (int) ;
 int CPU_BASED_TPR_SHADOW ;
 int EINVAL ;
 int nested_cpu_has (struct vmcs12*,int ) ;
 int page_address_valid (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int nested_vmx_check_tpr_shadow_controls(struct kvm_vcpu *vcpu,
      struct vmcs12 *vmcs12)
{
 if (!nested_cpu_has(vmcs12, CPU_BASED_TPR_SHADOW))
  return 0;

 if (CC(!page_address_valid(vcpu, vmcs12->virtual_apic_page_addr)))
  return -EINVAL;

 return 0;
}
