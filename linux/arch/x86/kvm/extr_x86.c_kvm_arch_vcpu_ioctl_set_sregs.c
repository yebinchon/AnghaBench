
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_sregs {int dummy; } ;


 int __set_sregs (struct kvm_vcpu*,struct kvm_sregs*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_set_sregs(struct kvm_vcpu *vcpu,
      struct kvm_sregs *sregs)
{
 int ret;

 vcpu_load(vcpu);
 ret = __set_sregs(vcpu, sregs);
 vcpu_put(vcpu);
 return ret;
}
