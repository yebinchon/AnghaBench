
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long ksp; int usp; } ;
struct task_struct {int flags; TYPE_1__ thread; } ;
struct pt_regs {unsigned long retpc; unsigned long er4; unsigned long er5; scalar_t__ er0; } ;


 int PF_KTHREAD ;
 scalar_t__ THREAD_SIZE ;
 struct pt_regs* current_pt_regs () ;
 int memset (struct pt_regs*,int ,int) ;
 int rdusp () ;
 scalar_t__ ret_from_fork ;
 scalar_t__ ret_from_kernel_thread ;
 scalar_t__ task_stack_page (struct task_struct*) ;
 scalar_t__ unlikely (int) ;

int copy_thread(unsigned long clone_flags,
  unsigned long usp, unsigned long topstk,
  struct task_struct *p)
{
 struct pt_regs *childregs;

 childregs = (struct pt_regs *) (THREAD_SIZE + task_stack_page(p)) - 1;

 if (unlikely(p->flags & PF_KTHREAD)) {
  memset(childregs, 0, sizeof(struct pt_regs));
  childregs->retpc = (unsigned long) ret_from_kernel_thread;
  childregs->er4 = topstk;
  childregs->er5 = usp;
 } else {
  *childregs = *current_pt_regs();
  childregs->er0 = 0;
  childregs->retpc = (unsigned long) ret_from_fork;
  p->thread.usp = usp ?: rdusp();
 }
 p->thread.ksp = (unsigned long)childregs;

 return 0;
}
