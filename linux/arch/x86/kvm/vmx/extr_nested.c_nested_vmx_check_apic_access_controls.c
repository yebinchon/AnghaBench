
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcs12 {int apic_access_addr; } ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ CC (int) ;
 int EINVAL ;
 int SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES ;
 scalar_t__ nested_cpu_has2 (struct vmcs12*,int ) ;
 int page_address_valid (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int nested_vmx_check_apic_access_controls(struct kvm_vcpu *vcpu,
       struct vmcs12 *vmcs12)
{
 if (nested_cpu_has2(vmcs12, SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES) &&
     CC(!page_address_valid(vcpu, vmcs12->apic_access_addr)))
  return -EINVAL;
 else
  return 0;
}
