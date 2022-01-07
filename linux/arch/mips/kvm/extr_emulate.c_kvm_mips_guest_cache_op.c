
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned long host_cp0_badvaddr; unsigned long pc; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_run {int dummy; } ;
typedef enum emulation_result { ____Placeholder_emulation_result } emulation_result ;


 int EMULATE_DONE ;
 int EMULATE_EXCEPT ;
 int EMULATE_FAIL ;




 int kvm_mips_emulate_tlbinv_ld (int ,int *,struct kvm_run*,struct kvm_vcpu*) ;
 int kvm_mips_emulate_tlbmiss_ld (int ,int *,struct kvm_run*,struct kvm_vcpu*) ;
 int kvm_trap_emul_gva_fault (struct kvm_vcpu*,unsigned long,int) ;
 int kvm_trap_emul_gva_lockless_begin (struct kvm_vcpu*) ;
 int kvm_trap_emul_gva_lockless_end (struct kvm_vcpu*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static enum emulation_result kvm_mips_guest_cache_op(int (*fn)(unsigned long),
           unsigned long curr_pc,
           unsigned long addr,
           struct kvm_run *run,
           struct kvm_vcpu *vcpu,
           u32 cause)
{
 int err;

 for (;;) {

  kvm_trap_emul_gva_lockless_begin(vcpu);
  err = fn(addr);
  kvm_trap_emul_gva_lockless_end(vcpu);

  if (likely(!err))
   return EMULATE_DONE;





  switch (kvm_trap_emul_gva_fault(vcpu, addr, 0)) {
  case 130:
  case 131:

   return EMULATE_FAIL;
  case 129:

   vcpu->arch.host_cp0_badvaddr = addr;
   vcpu->arch.pc = curr_pc;
   kvm_mips_emulate_tlbmiss_ld(cause, ((void*)0), run, vcpu);
   return EMULATE_EXCEPT;
  case 128:

   vcpu->arch.host_cp0_badvaddr = addr;
   vcpu->arch.pc = curr_pc;
   kvm_mips_emulate_tlbinv_ld(cause, ((void*)0), run, vcpu);
   return EMULATE_EXCEPT;
  default:
   break;
  };
 }
}
