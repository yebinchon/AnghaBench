
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int TIF_BLOCK_STEP ;
 int TIF_SINGLE_STEP ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;

void user_enable_block_step(struct task_struct *task)
{
 set_tsk_thread_flag(task, TIF_SINGLE_STEP);
 set_tsk_thread_flag(task, TIF_BLOCK_STEP);
}
