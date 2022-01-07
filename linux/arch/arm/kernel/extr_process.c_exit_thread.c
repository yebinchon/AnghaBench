
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int THREAD_NOTIFY_EXIT ;
 int task_thread_info (struct task_struct*) ;
 int thread_notify (int ,int ) ;

void exit_thread(struct task_struct *tsk)
{
 thread_notify(THREAD_NOTIFY_EXIT, task_thread_info(tsk));
}
