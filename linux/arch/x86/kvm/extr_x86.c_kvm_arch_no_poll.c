
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msr_kvm_poll_control; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



bool kvm_arch_no_poll(struct kvm_vcpu *vcpu)
{
 return (vcpu->arch.msr_kvm_poll_control & 1) == 0;
}
