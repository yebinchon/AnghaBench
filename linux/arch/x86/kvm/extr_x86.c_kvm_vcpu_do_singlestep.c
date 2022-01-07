
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int singlestep_rip; } ;
struct kvm_vcpu {int guest_debug; TYPE_1__ arch; struct kvm_run* run; } ;
struct TYPE_6__ {int dr6; int exception; int pc; } ;
struct TYPE_5__ {TYPE_3__ arch; } ;
struct kvm_run {int exit_reason; TYPE_2__ debug; } ;


 int DB_VECTOR ;
 int DR6_BS ;
 int DR6_FIXED_1 ;
 int DR6_RTM ;
 int KVM_EXIT_DEBUG ;
 int KVM_GUESTDBG_SINGLESTEP ;
 int kvm_queue_exception_p (struct kvm_vcpu*,int ,int) ;

__attribute__((used)) static int kvm_vcpu_do_singlestep(struct kvm_vcpu *vcpu)
{
 struct kvm_run *kvm_run = vcpu->run;

 if (vcpu->guest_debug & KVM_GUESTDBG_SINGLESTEP) {
  kvm_run->debug.arch.dr6 = DR6_BS | DR6_FIXED_1 | DR6_RTM;
  kvm_run->debug.arch.pc = vcpu->arch.singlestep_rip;
  kvm_run->debug.arch.exception = DB_VECTOR;
  kvm_run->exit_reason = KVM_EXIT_DEBUG;
  return 0;
 }
 kvm_queue_exception_p(vcpu, DB_VECTOR, DR6_BS);
 return 1;
}
