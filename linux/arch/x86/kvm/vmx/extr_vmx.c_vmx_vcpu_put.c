
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int to_vmx (struct kvm_vcpu*) ;
 int vmx_prepare_switch_to_host (int ) ;
 int vmx_vcpu_pi_put (struct kvm_vcpu*) ;

__attribute__((used)) static void vmx_vcpu_put(struct kvm_vcpu *vcpu)
{
 vmx_vcpu_pi_put(vcpu);

 vmx_prepare_switch_to_host(to_vmx(vcpu));
}
