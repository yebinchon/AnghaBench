
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_regs {int dummy; } ;


 int __set_regs (struct kvm_vcpu*,struct kvm_regs*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_set_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
 vcpu_load(vcpu);
 __set_regs(vcpu, regs);
 vcpu_put(vcpu);
 return 0;
}
