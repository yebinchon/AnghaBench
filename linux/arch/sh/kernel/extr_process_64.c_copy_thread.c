
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long sp; unsigned long pc; struct pt_regs* uregs; } ;
struct task_struct {int flags; TYPE_1__ thread; } ;
struct pt_regs {int sr; unsigned long* regs; } ;


 int PF_KTHREAD ;
 int SR_FD ;
 scalar_t__ THREAD_SIZE ;
 int * current ;
 struct pt_regs* current_pt_regs () ;
 int disable_fpu () ;
 int enable_fpu () ;
 int * last_task_used_math ;
 int memset (struct pt_regs*,int ,int) ;
 unsigned long neff_sign_extend (unsigned long) ;
 scalar_t__ ret_from_fork ;
 scalar_t__ ret_from_kernel_thread ;
 int save_fpu (int *) ;
 scalar_t__ task_stack_page (struct task_struct*) ;
 scalar_t__ unlikely (int) ;

int copy_thread(unsigned long clone_flags, unsigned long usp,
  unsigned long arg, struct task_struct *p)
{
 struct pt_regs *childregs;
 childregs = (struct pt_regs *)(THREAD_SIZE + task_stack_page(p)) - 1;
 p->thread.sp = (unsigned long) childregs;

 if (unlikely(p->flags & PF_KTHREAD)) {
  memset(childregs, 0, sizeof(struct pt_regs));
  childregs->regs[2] = (unsigned long)arg;
  childregs->regs[3] = (unsigned long)usp;
  childregs->sr = (1 << 30);
  childregs->sr |= SR_FD;
  p->thread.pc = (unsigned long) ret_from_kernel_thread;
  return 0;
 }
 *childregs = *current_pt_regs();







 if (usp)
  childregs->regs[15] = neff_sign_extend(usp);
 p->thread.uregs = childregs;

 childregs->regs[9] = 0;
 childregs->sr |= SR_FD;

 p->thread.pc = (unsigned long) ret_from_fork;

 return 0;
}
