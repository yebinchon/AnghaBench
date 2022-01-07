
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ per_flags; int per_event; int per_user; } ;
struct task_struct {TYPE_1__ thread; } ;


 int PIF_PER_TRAP ;
 int TIF_SINGLE_STEP ;
 int clear_pt_regs_flag (int ,int ) ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 int memset (int *,int ,int) ;
 int task_pt_regs (struct task_struct*) ;

void ptrace_disable(struct task_struct *task)
{
 memset(&task->thread.per_user, 0, sizeof(task->thread.per_user));
 memset(&task->thread.per_event, 0, sizeof(task->thread.per_event));
 clear_tsk_thread_flag(task, TIF_SINGLE_STEP);
 clear_pt_regs_flag(task_pt_regs(task), PIF_PER_TRAP);
 task->thread.per_flags = 0;
}
