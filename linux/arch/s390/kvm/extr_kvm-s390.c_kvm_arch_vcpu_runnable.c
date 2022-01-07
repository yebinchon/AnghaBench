
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_s390_vcpu_has_irq (struct kvm_vcpu*,int ) ;

int kvm_arch_vcpu_runnable(struct kvm_vcpu *vcpu)
{
 return kvm_s390_vcpu_has_irq(vcpu, 0);
}
