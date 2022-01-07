
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int flags; } ;
struct arch_uprobe {int dummy; } ;


 int SIGTRAP ;
 int X86_EFLAGS_TF ;
 int __skip_sstep (struct arch_uprobe*,struct pt_regs*) ;
 int current ;
 int send_sig (int ,int ,int ) ;

bool arch_uprobe_skip_sstep(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 bool ret = __skip_sstep(auprobe, regs);
 if (ret && (regs->flags & X86_EFLAGS_TF))
  send_sig(SIGTRAP, current, 0);
 return ret;
}
