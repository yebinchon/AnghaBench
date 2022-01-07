
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long ksp; struct pt_regs* kregs; } ;
struct task_struct {int flags; TYPE_1__ thread; } ;
struct switch_stack {unsigned long r16; unsigned long r17; unsigned long ra; int r23; } ;
struct pt_regs {unsigned long sp; int r8; scalar_t__ r7; scalar_t__ r2; int estatus; } ;


 unsigned long CLONE_SETTLS ;
 int PF_KTHREAD ;
 int STATUS_PIE ;
 struct pt_regs* current_pt_regs () ;
 int memset (struct switch_stack*,int ,int) ;
 scalar_t__ ret_from_fork ;
 scalar_t__ ret_from_kernel_thread ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;
 scalar_t__ unlikely (int) ;

int copy_thread(unsigned long clone_flags,
  unsigned long usp, unsigned long arg, struct task_struct *p)
{
 struct pt_regs *childregs = task_pt_regs(p);
 struct pt_regs *regs;
 struct switch_stack *stack;
 struct switch_stack *childstack =
  ((struct switch_stack *)childregs) - 1;

 if (unlikely(p->flags & PF_KTHREAD)) {
  memset(childstack, 0,
   sizeof(struct switch_stack) + sizeof(struct pt_regs));

  childstack->r16 = usp;
  childstack->r17 = arg;
  childstack->ra = (unsigned long) ret_from_kernel_thread;
  childregs->estatus = STATUS_PIE;
  childregs->sp = (unsigned long) childstack;

  p->thread.ksp = (unsigned long) childstack;
  p->thread.kregs = childregs;
  return 0;
 }

 regs = current_pt_regs();
 *childregs = *regs;
 childregs->r2 = 0;
 childregs->r7 = 0;

 stack = ((struct switch_stack *) regs) - 1;
 *childstack = *stack;
 childstack->ra = (unsigned long)ret_from_fork;
 p->thread.kregs = childregs;
 p->thread.ksp = (unsigned long) childstack;

 if (usp)
  childregs->sp = usp;


 if (clone_flags & CLONE_SETTLS)
  childstack->r23 = regs->r8;

 return 0;
}
