
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long ksp; int flags; int unique; scalar_t__ usp; } ;
struct thread_info {TYPE_1__ pcb; } ;
struct task_struct {int flags; } ;
struct switch_stack {unsigned long r26; unsigned long r9; unsigned long r10; } ;
struct pt_regs {int r20; scalar_t__ r19; scalar_t__ r0; int hae; } ;
struct TYPE_4__ {int hae_cache; } ;


 unsigned long CLONE_SETTLS ;
 int PF_KTHREAD ;
 TYPE_2__ alpha_mv ;
 struct pt_regs* current_pt_regs () ;
 int memset (struct switch_stack*,int ,int) ;
 scalar_t__ rdusp () ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;
 struct thread_info* task_thread_info (struct task_struct*) ;
 scalar_t__ unlikely (int) ;

int
copy_thread(unsigned long clone_flags, unsigned long usp,
     unsigned long kthread_arg,
     struct task_struct *p)
{
 extern void ret_from_fork(void);
 extern void ret_from_kernel_thread(void);

 struct thread_info *childti = task_thread_info(p);
 struct pt_regs *childregs = task_pt_regs(p);
 struct pt_regs *regs = current_pt_regs();
 struct switch_stack *childstack, *stack;

 childstack = ((struct switch_stack *) childregs) - 1;
 childti->pcb.ksp = (unsigned long) childstack;
 childti->pcb.flags = 1;

 if (unlikely(p->flags & PF_KTHREAD)) {

  memset(childstack, 0,
   sizeof(struct switch_stack) + sizeof(struct pt_regs));
  childstack->r26 = (unsigned long) ret_from_kernel_thread;
  childstack->r9 = usp;
  childstack->r10 = kthread_arg;
  childregs->hae = alpha_mv.hae_cache,
  childti->pcb.usp = 0;
  return 0;
 }





 if (clone_flags & CLONE_SETTLS)
  childti->pcb.unique = regs->r20;
 else
  regs->r20 = 0;
 childti->pcb.usp = usp ?: rdusp();
 *childregs = *regs;
 childregs->r0 = 0;
 childregs->r19 = 0;
 childregs->r20 = 1;
 stack = ((struct switch_stack *) regs) - 1;
 *childstack = *stack;
 childstack->r26 = (unsigned long) ret_from_fork;
 return 0;
}
