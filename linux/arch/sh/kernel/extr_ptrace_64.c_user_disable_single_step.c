
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct pt_regs* uregs; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int sr; } ;


 int SR_SSTEP ;
 int TIF_SINGLESTEP ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;

void user_disable_single_step(struct task_struct *child)
{
 struct pt_regs *regs = child->thread.uregs;

 regs->sr &= ~SR_SSTEP;

 clear_tsk_thread_flag(child, TIF_SINGLESTEP);
}
