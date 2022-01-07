
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned int ret; unsigned int bta; unsigned int lp_end; unsigned int lp_start; scalar_t__ lp_count; int status32; } ;
struct disasm_state {int zz; int * words; scalar_t__ instr_len; scalar_t__ fault; int write; scalar_t__ di; } ;
struct callee_regs {int dummy; } ;


 int PERF_COUNT_SW_ALIGNMENT_FAULTS ;
 int STATUS_DE_MASK ;
 int TASK_COMM_LEN ;
 int current ;
 scalar_t__ delay_mode (struct pt_regs*) ;
 int disasm_instr (unsigned int,struct disasm_state*,int,struct pt_regs*,struct callee_regs*) ;
 int fixup_load (struct disasm_state*,struct pt_regs*,struct callee_regs*) ;
 int fixup_store (struct disasm_state*,struct pt_regs*,struct callee_regs*) ;
 int get_task_comm (char*,int ) ;
 scalar_t__ no_unaligned_warning ;
 int perf_sw_event (int ,int,struct pt_regs*,unsigned long) ;
 int pr_err (char*,int ,unsigned long) ;
 int pr_warn (char*,int ,int ,unsigned long,unsigned int) ;
 int pr_warn_once (char*,int ,int ) ;
 int task_pid_nr (int ) ;
 int unaligned_enabled ;
 int user_mode (struct pt_regs*) ;

int misaligned_fixup(unsigned long address, struct pt_regs *regs,
       struct callee_regs *cregs)
{
 struct disasm_state state;
 char buf[TASK_COMM_LEN];


 if (!user_mode(regs) || !unaligned_enabled)
  return 1;

 if (no_unaligned_warning) {
  pr_warn_once("%s(%d) made unaligned access which was emulated"
        " by kernel assist\n. This can degrade application"
        " performance significantly\n. To enable further"
        " logging of such instances, please \n"
        " echo 0 > /proc/sys/kernel/ignore-unaligned-usertrap\n",
        get_task_comm(buf, current), task_pid_nr(current));
 } else {

  pr_warn("%s(%d): unaligned access to/from 0x%lx by PC: 0x%lx\n",
   get_task_comm(buf, current), task_pid_nr(current),
   address, regs->ret);

 }

 disasm_instr(regs->ret, &state, 1, regs, cregs);

 if (state.fault)
  goto fault;


 if ((state.zz == 1) || (state.di))
  goto fault;

 if (!state.write)
  fixup_load(&state, regs, cregs);
 else
  fixup_store(&state, regs, cregs);

 if (state.fault)
  goto fault;


 if (delay_mode(regs)) {
  regs->ret = regs->bta & ~1U;
  regs->status32 &= ~STATUS_DE_MASK;
 } else {
  regs->ret += state.instr_len;


  if ((regs->ret == regs->lp_end) && (regs->lp_count)) {
   regs->ret = regs->lp_start;
   regs->lp_count--;
  }
 }

 perf_sw_event(PERF_COUNT_SW_ALIGNMENT_FAULTS, 1, regs, address);
 return 0;

fault:
 pr_err("Alignment trap: fault in fix-up %08lx at [<%08lx>]\n",
  state.words[0], address);

 return 1;
}
