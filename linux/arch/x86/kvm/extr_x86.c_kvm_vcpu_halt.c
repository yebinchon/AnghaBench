
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mp_state; } ;
struct TYPE_4__ {int halt_exits; } ;
struct kvm_vcpu {TYPE_3__* run; TYPE_2__ arch; TYPE_1__ stat; } ;
struct TYPE_6__ {int exit_reason; } ;


 int KVM_EXIT_HLT ;
 int KVM_MP_STATE_HALTED ;
 scalar_t__ lapic_in_kernel (struct kvm_vcpu*) ;

int kvm_vcpu_halt(struct kvm_vcpu *vcpu)
{
 ++vcpu->stat.halt_exits;
 if (lapic_in_kernel(vcpu)) {
  vcpu->arch.mp_state = KVM_MP_STATE_HALTED;
  return 1;
 } else {
  vcpu->run->exit_reason = KVM_EXIT_HLT;
  return 0;
 }
}
