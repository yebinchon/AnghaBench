
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {int addr_limit; int status; } ;
struct TYPE_2__ {unsigned long sp; unsigned long pc; scalar_t__ fpu_counter; struct pt_regs* ptrace_bps; int dsp_status; } ;
struct task_struct {int flags; TYPE_1__ thread; } ;
struct pt_regs {unsigned long* regs; unsigned long gbr; int sr; } ;


 unsigned long CLONE_SETTLS ;
 int KERNEL_DS ;
 int PF_KTHREAD ;
 int SR_FD ;
 int SR_MD ;
 int TS_USEDFPU ;
 int USER_DS ;
 struct task_struct* current ;
 struct pt_regs* current_pt_regs () ;
 scalar_t__ is_dsp_enabled (struct task_struct*) ;
 int memset (struct pt_regs*,int ,int) ;
 scalar_t__ ret_from_fork ;
 scalar_t__ ret_from_kernel_thread ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;
 struct thread_info* task_thread_info (struct task_struct*) ;
 scalar_t__ unlikely (int) ;

int copy_thread(unsigned long clone_flags, unsigned long usp,
  unsigned long arg, struct task_struct *p)
{
 struct thread_info *ti = task_thread_info(p);
 struct pt_regs *childregs;
 memset(p->thread.ptrace_bps, 0, sizeof(p->thread.ptrace_bps));

 childregs = task_pt_regs(p);
 p->thread.sp = (unsigned long) childregs;
 if (unlikely(p->flags & PF_KTHREAD)) {
  memset(childregs, 0, sizeof(struct pt_regs));
  p->thread.pc = (unsigned long) ret_from_kernel_thread;
  childregs->regs[4] = arg;
  childregs->regs[5] = usp;
  childregs->sr = SR_MD;



  ti->addr_limit = KERNEL_DS;
  ti->status &= ~TS_USEDFPU;
  p->thread.fpu_counter = 0;
  return 0;
 }
 *childregs = *current_pt_regs();

 if (usp)
  childregs->regs[15] = usp;
 ti->addr_limit = USER_DS;

 if (clone_flags & CLONE_SETTLS)
  childregs->gbr = childregs->regs[0];

 childregs->regs[0] = 0;
 p->thread.pc = (unsigned long) ret_from_fork;
 return 0;
}
