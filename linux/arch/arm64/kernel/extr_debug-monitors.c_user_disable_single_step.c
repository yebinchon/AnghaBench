
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int TIF_SINGLESTEP ;
 int clear_ti_thread_flag (int ,int ) ;
 int task_thread_info (struct task_struct*) ;

void user_disable_single_step(struct task_struct *task)
{
 clear_ti_thread_flag(task_thread_info(task), TIF_SINGLESTEP);
}
