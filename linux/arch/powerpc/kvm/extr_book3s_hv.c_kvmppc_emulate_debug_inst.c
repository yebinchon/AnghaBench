
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int address; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;
struct kvm_run {TYPE_2__ debug; int exit_reason; } ;


 scalar_t__ EMULATE_DONE ;
 int INST_GENERIC ;
 scalar_t__ KVMPPC_INST_SW_BREAKPOINT ;
 int KVM_EXIT_DEBUG ;
 int RESUME_GUEST ;
 int RESUME_HOST ;
 int SRR1_PROGILL ;
 int kvmppc_core_queue_program (struct kvm_vcpu*,int ) ;
 scalar_t__ kvmppc_get_last_inst (struct kvm_vcpu*,int ,scalar_t__*) ;
 int kvmppc_get_pc (struct kvm_vcpu*) ;

__attribute__((used)) static int kvmppc_emulate_debug_inst(struct kvm_run *run,
     struct kvm_vcpu *vcpu)
{
 u32 last_inst;

 if (kvmppc_get_last_inst(vcpu, INST_GENERIC, &last_inst) !=
     EMULATE_DONE) {




  return RESUME_GUEST;
 }

 if (last_inst == KVMPPC_INST_SW_BREAKPOINT) {
  run->exit_reason = KVM_EXIT_DEBUG;
  run->debug.arch.address = kvmppc_get_pc(vcpu);
  return RESUME_HOST;
 } else {
  kvmppc_core_queue_program(vcpu, SRR1_PROGILL);
  return RESUME_GUEST;
 }
}
