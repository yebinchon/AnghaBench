
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int (* insn_singlestep ) (int ,TYPE_1__*,struct pt_regs*) ;} ;
struct arch_uprobe {TYPE_1__ asi; scalar_t__ insn; int simulate; } ;
typedef int probes_opcode_t ;


 int __mem_to_opcode_arm (unsigned int) ;
 int stub1 (int ,TYPE_1__*,struct pt_regs*) ;

bool arch_uprobe_skip_sstep(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 probes_opcode_t opcode;

 if (!auprobe->simulate)
  return 0;

 opcode = __mem_to_opcode_arm(*(unsigned int *) auprobe->insn);

 auprobe->asi.insn_singlestep(opcode, &auprobe->asi, regs);

 return 1;
}
