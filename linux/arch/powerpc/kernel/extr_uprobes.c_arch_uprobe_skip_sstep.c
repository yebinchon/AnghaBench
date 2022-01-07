
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct arch_uprobe {int insn; } ;


 int emulate_step (struct pt_regs*,int ) ;

bool arch_uprobe_skip_sstep(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 int ret;





 ret = emulate_step(regs, auprobe->insn);
 if (ret > 0)
  return 1;

 return 0;
}
