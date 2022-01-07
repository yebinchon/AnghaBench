
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int TIF_SINGLESTEP ;
 int clear_regs_spsr_ss (int ) ;
 int task_pt_regs (struct task_struct*) ;
 int task_thread_info (struct task_struct*) ;
 scalar_t__ test_ti_thread_flag (int ,int ) ;

void user_fastforward_single_step(struct task_struct *task)
{
 if (test_ti_thread_flag(task_thread_info(task), TIF_SINGLESTEP))
  clear_regs_spsr_ss(task_pt_regs(task));
}
