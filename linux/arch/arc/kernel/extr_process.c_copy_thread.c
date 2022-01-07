
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long ksp; } ;
struct task_struct {unsigned long flags; TYPE_1__ thread; } ;
struct pt_regs {unsigned long sp; int user_r25; int r3; scalar_t__ r0; } ;
struct callee_regs {unsigned long r13; unsigned long r14; int r25; } ;
struct TYPE_4__ {int thr_ptr; } ;


 unsigned long CLONE_SETTLS ;
 unsigned long PF_KTHREAD ;
 struct task_struct* current ;
 struct pt_regs* current_pt_regs () ;
 int memset (struct pt_regs*,int ,int) ;
 scalar_t__ ret_from_fork ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;
 TYPE_2__* task_thread_info (struct task_struct*) ;
 scalar_t__ unlikely (unsigned long) ;

int copy_thread(unsigned long clone_flags,
  unsigned long usp, unsigned long kthread_arg,
  struct task_struct *p)
{
 struct pt_regs *c_regs;
 unsigned long *childksp;
 struct callee_regs *c_callee;
 struct callee_regs *parent_callee;
 struct pt_regs *regs = current_pt_regs();


 c_regs = task_pt_regs(p);
 childksp = (unsigned long *)c_regs - 2;
 c_callee = ((struct callee_regs *)childksp) - 1;
 p->thread.ksp = (unsigned long)c_callee;


 childksp[0] = 0;
 childksp[1] = (unsigned long)ret_from_fork;

 if (unlikely(p->flags & PF_KTHREAD)) {
  memset(c_regs, 0, sizeof(struct pt_regs));

  c_callee->r13 = kthread_arg;
  c_callee->r14 = usp;

  return 0;
 }




 childksp[0] = 0;
 childksp[1] = (unsigned long)ret_from_fork;


 *c_regs = *regs;

 if (usp)
  c_regs->sp = usp;

 c_regs->r0 = 0;

 parent_callee = ((struct callee_regs *)regs) - 1;
 *c_callee = *parent_callee;

 if (unlikely(clone_flags & CLONE_SETTLS)) {




  task_thread_info(p)->thr_ptr = regs->r3;
 } else {

  task_thread_info(p)->thr_ptr =
  task_thread_info(current)->thr_ptr;
 }
 c_callee->r25 = task_thread_info(p)->thr_ptr;
 return 0;
}
