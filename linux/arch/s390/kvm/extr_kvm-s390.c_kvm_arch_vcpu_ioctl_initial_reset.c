
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_s390_vcpu_initial_reset (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_arch_vcpu_ioctl_initial_reset(struct kvm_vcpu *vcpu)
{
 kvm_s390_vcpu_initial_reset(vcpu);
 return 0;
}
