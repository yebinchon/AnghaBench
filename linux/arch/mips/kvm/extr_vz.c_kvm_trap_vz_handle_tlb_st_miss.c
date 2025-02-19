
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union mips_instruction {int word; } ;
typedef int ulong ;
typedef int u32 ;
struct TYPE_2__ {int host_cp0_cause; int host_cp0_badvaddr; scalar_t__ pc; } ;
struct kvm_vcpu {TYPE_1__ arch; struct kvm_run* run; } ;
struct kvm_run {void* exit_reason; } ;
typedef enum emulation_result { ____Placeholder_emulation_result } emulation_result ;


 int CAUSEF_BD ;
 int EMULATE_DONE ;
 int EMULATE_DO_MMIO ;
 int EMULATE_FAIL ;
 void* KVM_EXIT_INTERNAL_ERROR ;
 void* KVM_EXIT_MMIO ;
 int RESUME_GUEST ;
 int RESUME_HOST ;
 int kvm_err (char*,int*,int ) ;
 int kvm_get_badinstr (int*,struct kvm_vcpu*,int *) ;
 int kvm_mips_emulate_store (union mips_instruction,int,struct kvm_run*,struct kvm_vcpu*) ;
 scalar_t__ kvm_mips_handle_vz_root_tlb_fault (int ,struct kvm_vcpu*,int) ;
 scalar_t__ kvm_vz_badvaddr_to_gpa (struct kvm_vcpu*,int ,int *) ;

__attribute__((used)) static int kvm_trap_vz_handle_tlb_st_miss(struct kvm_vcpu *vcpu)
{
 struct kvm_run *run = vcpu->run;
 u32 *opc = (u32 *) vcpu->arch.pc;
 u32 cause = vcpu->arch.host_cp0_cause;
 ulong badvaddr = vcpu->arch.host_cp0_badvaddr;
 union mips_instruction inst;
 enum emulation_result er = EMULATE_DONE;
 int err;
 int ret = RESUME_GUEST;


 if (kvm_vz_badvaddr_to_gpa(vcpu, badvaddr, &badvaddr))
  return RESUME_GUEST;
 vcpu->arch.host_cp0_badvaddr = badvaddr;

 if (kvm_mips_handle_vz_root_tlb_fault(badvaddr, vcpu, 1)) {

  if (cause & CAUSEF_BD)
   opc += 1;
  err = kvm_get_badinstr(opc, vcpu, &inst.word);
  if (err) {
   run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
   return RESUME_HOST;
  }


  er = kvm_mips_emulate_store(inst, cause, run, vcpu);
  if (er == EMULATE_FAIL) {
   kvm_err("Guest Emulate Store to MMIO space failed: PC: %p, BadVaddr: %#lx\n",
    opc, badvaddr);
   run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
  }
 }

 if (er == EMULATE_DONE) {
  ret = RESUME_GUEST;
 } else if (er == EMULATE_DO_MMIO) {
  run->exit_reason = KVM_EXIT_MMIO;
  ret = RESUME_HOST;
 } else {
  run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
  ret = RESUME_HOST;
 }
 return ret;
}
