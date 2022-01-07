
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int is_guest_mode (struct kvm_vcpu*) ;
 int vmx_set_rvi (int) ;

__attribute__((used)) static void vmx_hwapic_irr_update(struct kvm_vcpu *vcpu, int max_irr)
{
 if (!is_guest_mode(vcpu))
  vmx_set_rvi(max_irr);
}
