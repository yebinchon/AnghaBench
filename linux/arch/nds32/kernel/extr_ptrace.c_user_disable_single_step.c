
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {int ipsw; } ;


 int PSW_mskHSS ;
 int TIF_SINGLESTEP ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;

void user_disable_single_step(struct task_struct *child)
{
 struct pt_regs *regs;
 regs = task_pt_regs(child);
 regs->ipsw &= ~PSW_mskHSS;
 clear_tsk_thread_flag(child, TIF_SINGLESTEP);
}
