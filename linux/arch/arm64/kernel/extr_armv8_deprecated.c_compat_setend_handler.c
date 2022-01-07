
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pt_regs {int pc; int pstate; } ;
struct TYPE_2__ {scalar_t__ pid; int comm; } ;


 int PERF_COUNT_SW_EMULATION_FAULTS ;
 int PSR_AA32_E_BIT ;
 TYPE_1__* current ;
 int perf_sw_event (int ,int,struct pt_regs*,int ) ;
 int pr_warn_ratelimited (char*,int ,unsigned long,int ) ;
 int trace_instruction_emulation (char*,int ) ;

__attribute__((used)) static int compat_setend_handler(struct pt_regs *regs, u32 big_endian)
{
 char *insn;

 perf_sw_event(PERF_COUNT_SW_EMULATION_FAULTS, 1, regs, regs->pc);

 if (big_endian) {
  insn = "setend be";
  regs->pstate |= PSR_AA32_E_BIT;
 } else {
  insn = "setend le";
  regs->pstate &= ~PSR_AA32_E_BIT;
 }

 trace_instruction_emulation(insn, regs->pc);
 pr_warn_ratelimited("\"%s\" (%ld) uses deprecated setend instruction at 0x%llx\n",
   current->comm, (unsigned long)current->pid, regs->pc);

 return 0;
}
