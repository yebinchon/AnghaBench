
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; } ;
struct pt_regs {int dummy; } ;


 scalar_t__ ARM64_SSBD_FORCE_ENABLE ;
 int PF_KTHREAD ;
 int TIF_SSBD ;
 scalar_t__ arm64_get_ssbd_state () ;
 scalar_t__ compat_user_mode (struct pt_regs*) ;
 int set_compat_ssbs_bit (struct pt_regs*) ;
 int set_ssbs_bit (struct pt_regs*) ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;
 scalar_t__ test_tsk_thread_flag (struct task_struct*,int ) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static void ssbs_thread_switch(struct task_struct *next)
{
 struct pt_regs *regs = task_pt_regs(next);





 if (unlikely(next->flags & PF_KTHREAD))
  return;


 if ((arm64_get_ssbd_state() == ARM64_SSBD_FORCE_ENABLE) ||
     test_tsk_thread_flag(next, TIF_SSBD))
  return;

 if (compat_user_mode(regs))
  set_compat_ssbs_bit(regs);
 else if (user_mode(regs))
  set_ssbs_bit(regs);
}
