
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcs12 {int vmwrite_bitmap; int vmread_bitmap; } ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ CC (int) ;
 int EINVAL ;
 int nested_cpu_has_shadow_vmcs (struct vmcs12*) ;
 int page_address_valid (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int nested_vmx_check_shadow_vmcs_controls(struct kvm_vcpu *vcpu,
       struct vmcs12 *vmcs12)
{
 if (!nested_cpu_has_shadow_vmcs(vmcs12))
  return 0;

 if (CC(!page_address_valid(vcpu, vmcs12->vmread_bitmap)) ||
     CC(!page_address_valid(vcpu, vmcs12->vmwrite_bitmap)))
  return -EINVAL;

 return 0;
}
