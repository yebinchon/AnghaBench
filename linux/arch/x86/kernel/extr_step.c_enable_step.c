
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int TIF_BLOCKSTEP ;
 scalar_t__ enable_single_step (struct task_struct*) ;
 int set_task_blockstep (struct task_struct*,int) ;
 scalar_t__ test_tsk_thread_flag (struct task_struct*,int ) ;

__attribute__((used)) static void enable_step(struct task_struct *child, bool block)
{







 if (enable_single_step(child) && block)
  set_task_blockstep(child, 1);
 else if (test_tsk_thread_flag(child, TIF_BLOCKSTEP))
  set_task_blockstep(child, 0);
}
