
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int sp; } ;
struct arch_uprobe {int dummy; } ;


 int BUG_ON (int) ;
 int ERESTART ;
 int branch_is_call (struct arch_uprobe*) ;
 scalar_t__ sizeof_long (struct pt_regs*) ;

__attribute__((used)) static int branch_post_xol_op(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 BUG_ON(!branch_is_call(auprobe));






 regs->sp += sizeof_long(regs);
 return -ERESTART;
}
