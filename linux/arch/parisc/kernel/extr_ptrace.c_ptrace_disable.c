
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ l; scalar_t__ h; scalar_t__ t; scalar_t__ r; } ;


 int TIF_BLOCKSTEP ;
 int TIF_SINGLESTEP ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 TYPE_1__* pa_psw (struct task_struct*) ;

void ptrace_disable(struct task_struct *task)
{
 clear_tsk_thread_flag(task, TIF_SINGLESTEP);
 clear_tsk_thread_flag(task, TIF_BLOCKSTEP);


 pa_psw(task)->r = 0;
 pa_psw(task)->t = 0;
 pa_psw(task)->h = 0;
 pa_psw(task)->l = 0;
}
