
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;
struct task_struct {int dummy; } ;


 int TIF_SINGLESTEP ;
 int set_regs_spsr_ss (int ) ;
 int task_pt_regs (struct task_struct*) ;
 struct thread_info* task_thread_info (struct task_struct*) ;
 int test_and_set_ti_thread_flag (struct thread_info*,int ) ;

void user_enable_single_step(struct task_struct *task)
{
 struct thread_info *ti = task_thread_info(task);

 if (!test_and_set_ti_thread_flag(ti, TIF_SINGLESTEP))
  set_regs_spsr_ss(task_pt_regs(task));
}
