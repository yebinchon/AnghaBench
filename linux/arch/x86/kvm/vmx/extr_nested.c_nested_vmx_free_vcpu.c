
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int vmcs01; } ;


 int free_nested (struct kvm_vcpu*) ;
 TYPE_1__* to_vmx (struct kvm_vcpu*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;
 int vmx_leave_nested (struct kvm_vcpu*) ;
 int vmx_switch_vmcs (struct kvm_vcpu*,int *) ;

void nested_vmx_free_vcpu(struct kvm_vcpu *vcpu)
{
 vcpu_load(vcpu);
 vmx_leave_nested(vcpu);
 vmx_switch_vmcs(vcpu, &to_vmx(vcpu)->vmcs01);
 free_nested(vcpu);
 vcpu_put(vcpu);
}
