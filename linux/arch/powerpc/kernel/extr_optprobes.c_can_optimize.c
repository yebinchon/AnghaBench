
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {unsigned long nip; int trap; int msr; } ;
struct TYPE_2__ {int * insn; } ;
struct kprobe {TYPE_1__ ainsn; int * addr; } ;
struct instruction_op {int dummy; } ;
typedef int kprobe_opcode_t ;


 int MSR_KERNEL ;
 int analyse_instr (struct instruction_op*,struct pt_regs*,int ) ;
 int emulate_update_regs (struct pt_regs*,struct instruction_op*) ;
 int is_conditional_branch (int ) ;
 int is_kernel_addr (unsigned long) ;
 int kretprobe_trampoline ;
 int memset (struct pt_regs*,int ,int) ;

__attribute__((used)) static unsigned long can_optimize(struct kprobe *p)
{
 struct pt_regs regs;
 struct instruction_op op;
 unsigned long nip = 0;






 if (p->addr == (kprobe_opcode_t *)&kretprobe_trampoline)
  return (unsigned long)p->addr + sizeof(kprobe_opcode_t);







 if (!is_kernel_addr((unsigned long)p->addr))
  return 0;

 memset(&regs, 0, sizeof(struct pt_regs));
 regs.nip = (unsigned long)p->addr;
 regs.trap = 0x0;
 regs.msr = MSR_KERNEL;
 if (!is_conditional_branch(*p->ainsn.insn) &&
   analyse_instr(&op, &regs, *p->ainsn.insn) == 1) {
  emulate_update_regs(&regs, &op);
  nip = regs.nip;
 }

 return nip;
}
