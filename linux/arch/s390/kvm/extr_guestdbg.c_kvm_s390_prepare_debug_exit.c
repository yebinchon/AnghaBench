
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int guest_debug; TYPE_1__* run; } ;
struct TYPE_2__ {int exit_reason; } ;


 int KVM_EXIT_DEBUG ;
 int KVM_GUESTDBG_EXIT_PENDING ;

void kvm_s390_prepare_debug_exit(struct kvm_vcpu *vcpu)
{
 vcpu->run->exit_reason = KVM_EXIT_DEBUG;
 vcpu->guest_debug &= ~KVM_GUESTDBG_EXIT_PENDING;
}
