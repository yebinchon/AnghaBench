
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct arch_uprobe {int dummy; } ;


 int riprel_pre_xol (struct arch_uprobe*,struct pt_regs*) ;

__attribute__((used)) static int default_pre_xol_op(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 riprel_pre_xol(auprobe, regs);
 return 0;
}
