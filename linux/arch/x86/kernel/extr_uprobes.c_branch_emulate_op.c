
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {unsigned long ip; } ;
struct TYPE_2__ {unsigned long ilen; scalar_t__ offs; } ;
struct arch_uprobe {TYPE_1__ branch; } ;


 scalar_t__ branch_is_call (struct arch_uprobe*) ;
 int check_jmp_cond (struct arch_uprobe*,struct pt_regs*) ;
 scalar_t__ emulate_push_stack (struct pt_regs*,unsigned long) ;

__attribute__((used)) static bool branch_emulate_op(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 unsigned long new_ip = regs->ip += auprobe->branch.ilen;
 unsigned long offs = (long)auprobe->branch.offs;

 if (branch_is_call(auprobe)) {
  if (emulate_push_stack(regs, new_ip))
   return 0;
 } else if (!check_jmp_cond(auprobe, regs)) {
  offs = 0;
 }

 regs->ip = new_ip + offs;
 return 1;
}
