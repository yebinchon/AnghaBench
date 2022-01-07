
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int ARM_pc; int ARM_cpsr; } ;
struct TYPE_2__ {int (* insn_check_cc ) (int ) ;} ;
struct arch_uprobe {TYPE_1__ asi; } ;


 int stub1 (int ) ;

bool arch_uprobe_ignore(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 if (!auprobe->asi.insn_check_cc(regs->ARM_cpsr)) {
  regs->ARM_pc += 4;
  return 1;
 }

 return 0;
}
