
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swap_insn_args {scalar_t__ arm_kprobe; struct kprobe* p; } ;
struct TYPE_2__ {int is_ftrace_insn; } ;
struct kprobe {scalar_t__ addr; TYPE_1__ ainsn; int opcode; } ;
struct ftrace_insn {scalar_t__ disp; int opc; } ;
typedef int new_insn ;


 int BREAKPOINT_INSTRUCTION ;
 scalar_t__ KPROBE_ON_FTRACE_CALL ;
 scalar_t__ KPROBE_ON_FTRACE_NOP ;
 int ftrace_generate_call_insn (struct ftrace_insn*,unsigned long) ;
 int ftrace_generate_nop_insn (struct ftrace_insn*) ;
 scalar_t__ is_ftrace_nop (struct ftrace_insn*) ;
 int s390_kernel_write (scalar_t__,struct ftrace_insn*,size_t) ;

__attribute__((used)) static int swap_instruction(void *data)
{
 struct swap_insn_args *args = data;
 struct ftrace_insn new_insn, *insn;
 struct kprobe *p = args->p;
 size_t len;

 new_insn.opc = args->arm_kprobe ? BREAKPOINT_INSTRUCTION : p->opcode;
 len = sizeof(new_insn.opc);
 if (!p->ainsn.is_ftrace_insn)
  goto skip_ftrace;
 len = sizeof(new_insn);
 insn = (struct ftrace_insn *) p->addr;
 if (args->arm_kprobe) {
  if (is_ftrace_nop(insn))
   new_insn.disp = KPROBE_ON_FTRACE_NOP;
  else
   new_insn.disp = KPROBE_ON_FTRACE_CALL;
 } else {
  ftrace_generate_call_insn(&new_insn, (unsigned long)p->addr);
  if (insn->disp == KPROBE_ON_FTRACE_NOP)
   ftrace_generate_nop_insn(&new_insn);
 }
skip_ftrace:
 s390_kernel_write(p->addr, &new_insn, len);
 return 0;
}
