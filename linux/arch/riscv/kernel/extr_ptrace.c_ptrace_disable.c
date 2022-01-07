
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int TIF_SYSCALL_TRACE ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;

void ptrace_disable(struct task_struct *child)
{
 clear_tsk_thread_flag(child, TIF_SYSCALL_TRACE);
}
