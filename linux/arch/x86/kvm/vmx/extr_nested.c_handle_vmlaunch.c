
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int nested_vmx_run (struct kvm_vcpu*,int) ;

__attribute__((used)) static int handle_vmlaunch(struct kvm_vcpu *vcpu)
{
 return nested_vmx_run(vcpu, 1);
}
