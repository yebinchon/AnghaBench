
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_arch_vcpu_runnable (struct kvm_vcpu*) ;

bool kvm_arch_dy_runnable(struct kvm_vcpu *vcpu)
{
 return kvm_arch_vcpu_runnable(vcpu);
}
