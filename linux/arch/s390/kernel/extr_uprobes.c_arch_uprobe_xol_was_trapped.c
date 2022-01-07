
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {scalar_t__ int_code; } ;


 scalar_t__ UPROBE_TRAP_NR ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;

bool arch_uprobe_xol_was_trapped(struct task_struct *tsk)
{
 struct pt_regs *regs = task_pt_regs(tsk);

 if (regs->int_code != UPROBE_TRAP_NR)
  return 1;
 return 0;
}
