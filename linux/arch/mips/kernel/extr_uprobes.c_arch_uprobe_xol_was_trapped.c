
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ trap_nr; } ;
struct task_struct {TYPE_1__ thread; } ;


 scalar_t__ UPROBE_TRAP_NR ;

bool arch_uprobe_xol_was_trapped(struct task_struct *tsk)
{
 if (tsk->thread.trap_nr != UPROBE_TRAP_NR)
  return 1;

 return 0;
}
