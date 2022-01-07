
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int tnpc; int tpc; } ;
struct arch_uprobe {int ixol; } ;



bool arch_uprobe_skip_sstep(struct arch_uprobe *auprobe, struct pt_regs *regs)
{



 if (auprobe->ixol == (1 << 24)) {
  regs->tnpc += 4;
  regs->tpc += 4;
  return 1;
 }

 return 0;
}
