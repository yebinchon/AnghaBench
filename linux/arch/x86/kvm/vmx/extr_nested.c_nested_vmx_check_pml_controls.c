
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcs12 {int pml_address; } ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ CC (int) ;
 int EINVAL ;
 int nested_cpu_has_ept (struct vmcs12*) ;
 int nested_cpu_has_pml (struct vmcs12*) ;
 int page_address_valid (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int nested_vmx_check_pml_controls(struct kvm_vcpu *vcpu,
      struct vmcs12 *vmcs12)
{
 if (!nested_cpu_has_pml(vmcs12))
  return 0;

 if (CC(!nested_cpu_has_ept(vmcs12)) ||
     CC(!page_address_valid(vcpu, vmcs12->pml_address)))
  return -EINVAL;

 return 0;
}
