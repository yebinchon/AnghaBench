
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;



bool kvm_arch_vcpu_in_kernel(struct kvm_vcpu *vcpu)
{
 return 0;
}
