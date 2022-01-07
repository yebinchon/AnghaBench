
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pt_regs {int pc; int pstate; } ;
struct TYPE_2__ {scalar_t__ pid; int comm; } ;





 int EFAULT ;
 int EINVAL ;
 int PERF_COUNT_SW_EMULATION_FAULTS ;
 int aarch32_check_condition (int ,int ) ;
 int aarch32_insn_mcr_extract_crm (int ) ;
 int aarch32_insn_mcr_extract_opc2 (int ) ;
 int arm64_skip_faulting_instruction (struct pt_regs*,int) ;
 TYPE_1__* current ;
 int dmb (int ) ;
 int dsb (int ) ;
 int perf_sw_event (int ,int,struct pt_regs*,int ) ;
 int pr_warn_ratelimited (char*,int ,unsigned long,int ) ;
 int sy ;
 int trace_instruction_emulation (char*,int ) ;

__attribute__((used)) static int cp15barrier_handler(struct pt_regs *regs, u32 instr)
{
 perf_sw_event(PERF_COUNT_SW_EMULATION_FAULTS, 1, regs, regs->pc);

 switch (aarch32_check_condition(instr, regs->pstate)) {
 case 129:
  break;
 case 130:

  goto ret;
 case 128:

  return -EFAULT;
 default:
  return -EINVAL;
 }

 switch (aarch32_insn_mcr_extract_crm(instr)) {
 case 10:




  if (aarch32_insn_mcr_extract_opc2(instr) == 5) {
   dmb(sy);
   trace_instruction_emulation(
    "mcr p15, 0, Rt, c7, c10, 5 ; dmb", regs->pc);
  } else {
   dsb(sy);
   trace_instruction_emulation(
    "mcr p15, 0, Rt, c7, c10, 4 ; dsb", regs->pc);
  }
  break;
 case 5:






  trace_instruction_emulation(
   "mcr p15, 0, Rt, c7, c5, 4 ; isb", regs->pc);
  break;
 }

ret:
 pr_warn_ratelimited("\"%s\" (%ld) uses deprecated CP15 Barrier instruction at 0x%llx\n",
   current->comm, (unsigned long)current->pid, regs->pc);

 arm64_skip_faulting_instruction(regs, 4);
 return 0;
}
