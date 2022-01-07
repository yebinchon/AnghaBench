
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int flags; } ;
struct pt_regs {unsigned long* gpr; unsigned long sp; } ;
struct TYPE_2__ {unsigned long ksp; } ;


 unsigned long CLONE_SETTLS ;
 int PF_KTHREAD ;
 scalar_t__ STACK_FRAME_OVERHEAD ;
 unsigned long THREAD_SIZE ;
 struct pt_regs* current_pt_regs () ;
 int memset (struct pt_regs*,int ,int) ;
 scalar_t__ ret_from_fork ;
 scalar_t__ task_stack_page (struct task_struct*) ;
 TYPE_1__* task_thread_info (struct task_struct*) ;
 scalar_t__ unlikely (int) ;

int
copy_thread(unsigned long clone_flags, unsigned long usp,
     unsigned long arg, struct task_struct *p)
{
 struct pt_regs *userregs;
 struct pt_regs *kregs;
 unsigned long sp = (unsigned long)task_stack_page(p) + THREAD_SIZE;
 unsigned long top_of_kernel_stack;

 top_of_kernel_stack = sp;


 sp -= STACK_FRAME_OVERHEAD;
 sp -= sizeof(struct pt_regs);
 userregs = (struct pt_regs *) sp;


 sp -= STACK_FRAME_OVERHEAD;
 sp -= sizeof(struct pt_regs);
 kregs = (struct pt_regs *)sp;

 if (unlikely(p->flags & PF_KTHREAD)) {
  memset(kregs, 0, sizeof(struct pt_regs));
  kregs->gpr[20] = usp;
  kregs->gpr[22] = arg;
 } else {
  *userregs = *current_pt_regs();

  if (usp)
   userregs->sp = usp;
  if (clone_flags & CLONE_SETTLS)
   userregs->gpr[10] = userregs->gpr[7];

  userregs->gpr[11] = 0;

  kregs->gpr[20] = 0;
 }





 kregs->sp = top_of_kernel_stack;
 kregs->gpr[9] = (unsigned long)ret_from_fork;

 task_thread_info(p)->ksp = (unsigned long)kregs;

 return 0;
}
