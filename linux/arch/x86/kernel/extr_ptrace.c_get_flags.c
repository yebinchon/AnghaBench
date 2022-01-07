
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {unsigned long flags; } ;


 int TIF_FORCED_TF ;
 unsigned long X86_EFLAGS_TF ;
 TYPE_1__* task_pt_regs (struct task_struct*) ;
 scalar_t__ test_tsk_thread_flag (struct task_struct*,int ) ;

__attribute__((used)) static unsigned long get_flags(struct task_struct *task)
{
 unsigned long retval = task_pt_regs(task)->flags;




 if (test_tsk_thread_flag(task, TIF_FORCED_TF))
  retval &= ~X86_EFLAGS_TF;

 return retval;
}
