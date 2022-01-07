
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long r1; unsigned long r20; unsigned long r19; int pt_mode; int msr; unsigned long r15; int r10; int r21; } ;
struct thread_info {struct pt_regs cpu_context; } ;
struct task_struct {int flags; } ;
struct cpu_context {int dummy; } ;


 unsigned long CLONE_SETTLS ;
 int MSR_EE ;
 int MSR_EIP ;
 int MSR_IE ;
 int MSR_UMS ;
 int MSR_VM ;
 int MSR_VMS ;
 int PF_KTHREAD ;
 struct pt_regs* current_pt_regs () ;
 int local_save_flags (int) ;
 int memset (struct pt_regs*,int ,int) ;
 scalar_t__ ret_from_fork ;
 scalar_t__ ret_from_kernel_thread ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;
 struct thread_info* task_thread_info (struct task_struct*) ;
 scalar_t__ unlikely (int) ;

int copy_thread(unsigned long clone_flags, unsigned long usp,
  unsigned long arg, struct task_struct *p)
{
 struct pt_regs *childregs = task_pt_regs(p);
 struct thread_info *ti = task_thread_info(p);

 if (unlikely(p->flags & PF_KTHREAD)) {


  memset(childregs, 0, sizeof(struct pt_regs));
  memset(&ti->cpu_context, 0, sizeof(struct cpu_context));
  ti->cpu_context.r1 = (unsigned long)childregs;
  ti->cpu_context.r20 = (unsigned long)usp;
  ti->cpu_context.r19 = (unsigned long)arg;
  childregs->pt_mode = 1;
  local_save_flags(childregs->msr);



  ti->cpu_context.r15 = (unsigned long)ret_from_kernel_thread - 8;
  return 0;
 }
 *childregs = *current_pt_regs();
 if (usp)
  childregs->r1 = usp;

 memset(&ti->cpu_context, 0, sizeof(struct cpu_context));
 ti->cpu_context.r1 = (unsigned long)childregs;

 ti->cpu_context.msr = (unsigned long)childregs->msr;
 ti->cpu_context.r15 = (unsigned long)ret_from_fork - 8;





 if (clone_flags & CLONE_SETTLS)
  childregs->r21 = childregs->r10;

 return 0;
}
