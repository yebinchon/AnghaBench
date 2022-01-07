
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int wait; int pending_exceptions; int pc; } ;
struct TYPE_5__ {int wait_exits; } ;
struct kvm_vcpu {TYPE_1__* run; TYPE_3__ arch; TYPE_2__ stat; } ;
typedef enum emulation_result { ____Placeholder_emulation_result } emulation_result ;
struct TYPE_4__ {int exit_reason; } ;


 int EMULATE_DONE ;
 int KVM_EXIT_IRQ_WINDOW_OPEN ;
 int KVM_REQ_UNHALT ;
 int KVM_TRACE_EXIT_WAIT ;
 scalar_t__ kvm_check_request (int ,struct kvm_vcpu*) ;
 int kvm_clear_request (int ,struct kvm_vcpu*) ;
 int kvm_debug (char*,int ,int ) ;
 int kvm_vcpu_block (struct kvm_vcpu*) ;
 int kvm_vz_lose_htimer (struct kvm_vcpu*) ;
 int trace_kvm_exit (struct kvm_vcpu*,int ) ;

enum emulation_result kvm_mips_emul_wait(struct kvm_vcpu *vcpu)
{
 kvm_debug("[%#lx] !!!WAIT!!! (%#lx)\n", vcpu->arch.pc,
    vcpu->arch.pending_exceptions);

 ++vcpu->stat.wait_exits;
 trace_kvm_exit(vcpu, KVM_TRACE_EXIT_WAIT);
 if (!vcpu->arch.pending_exceptions) {
  kvm_vz_lose_htimer(vcpu);
  vcpu->arch.wait = 1;
  kvm_vcpu_block(vcpu);





  if (kvm_check_request(KVM_REQ_UNHALT, vcpu)) {
   kvm_clear_request(KVM_REQ_UNHALT, vcpu);
   vcpu->run->exit_reason = KVM_EXIT_IRQ_WINDOW_OPEN;
  }
 }

 return EMULATE_DONE;
}
