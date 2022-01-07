
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 scalar_t__ kvm_vcpu_has_events (struct kvm_vcpu*) ;
 scalar_t__ kvm_vcpu_running (struct kvm_vcpu*) ;

int kvm_arch_vcpu_runnable(struct kvm_vcpu *vcpu)
{
 return kvm_vcpu_running(vcpu) || kvm_vcpu_has_events(vcpu);
}
