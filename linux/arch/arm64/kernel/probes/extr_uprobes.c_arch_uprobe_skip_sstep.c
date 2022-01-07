
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int (* handler ) (int ,unsigned long,struct pt_regs*) ;} ;
struct arch_uprobe {TYPE_1__ api; int * insn; int simulate; } ;
typedef int probe_opcode_t ;


 unsigned long instruction_pointer (struct pt_regs*) ;
 int stub1 (int ,unsigned long,struct pt_regs*) ;

bool arch_uprobe_skip_sstep(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 probe_opcode_t insn;
 unsigned long addr;

 if (!auprobe->simulate)
  return 0;

 insn = *(probe_opcode_t *)(&auprobe->insn[0]);
 addr = instruction_pointer(regs);

 if (auprobe->api.handler)
  auprobe->api.handler(insn, addr, regs);

 return 1;
}
