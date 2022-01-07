
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int TIF_BLOCKSTEP ;
 int TIF_FORCED_TF ;
 int TIF_SINGLESTEP ;
 int X86_EFLAGS_TF ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 int set_task_blockstep (struct task_struct*,int) ;
 TYPE_1__* task_pt_regs (struct task_struct*) ;
 scalar_t__ test_and_clear_tsk_thread_flag (struct task_struct*,int ) ;
 scalar_t__ test_tsk_thread_flag (struct task_struct*,int ) ;

void user_disable_single_step(struct task_struct *child)
{



 if (test_tsk_thread_flag(child, TIF_BLOCKSTEP))
  set_task_blockstep(child, 0);


 clear_tsk_thread_flag(child, TIF_SINGLESTEP);


 if (test_and_clear_tsk_thread_flag(child, TIF_FORCED_TF))
  task_pt_regs(child)->flags &= ~X86_EFLAGS_TF;
}
