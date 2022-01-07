
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int preempted_in_kernel; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



bool kvm_arch_vcpu_in_kernel(struct kvm_vcpu *vcpu)
{
 return vcpu->arch.preempted_in_kernel;
}
