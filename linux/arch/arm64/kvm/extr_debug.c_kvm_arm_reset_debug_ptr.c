
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vcpu_debug_state; int * debug_ptr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



void kvm_arm_reset_debug_ptr(struct kvm_vcpu *vcpu)
{
 vcpu->arch.debug_ptr = &vcpu->arch.vcpu_debug_state;
}
