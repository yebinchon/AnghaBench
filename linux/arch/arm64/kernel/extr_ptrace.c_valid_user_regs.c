
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_pt_regs {int pstate; } ;
struct task_struct {int dummy; } ;


 int DBG_SPSR_SS ;
 int TIF_SINGLESTEP ;
 scalar_t__ is_compat_thread (int ) ;
 int task_thread_info (struct task_struct*) ;
 int test_tsk_thread_flag (struct task_struct*,int ) ;
 int valid_compat_regs (struct user_pt_regs*) ;
 int valid_native_regs (struct user_pt_regs*) ;

int valid_user_regs(struct user_pt_regs *regs, struct task_struct *task)
{
 if (!test_tsk_thread_flag(task, TIF_SINGLESTEP))
  regs->pstate &= ~DBG_SPSR_SS;

 if (is_compat_thread(task_thread_info(task)))
  return valid_compat_regs(regs);
 else
  return valid_native_regs(regs);
}
