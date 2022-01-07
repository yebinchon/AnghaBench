
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long ARM_sp; unsigned long r4; unsigned long r5; unsigned long pc; unsigned long sp; int ARM_r3; int ARM_cpsr; scalar_t__ ARM_r0; } ;
struct thread_info {int stack_canary; int * tp_value; struct pt_regs cpu_context; int cpu_domain; } ;
struct task_struct {int flags; int stack_canary; } ;
struct cpu_context_save {int dummy; } ;


 unsigned long CLONE_SETTLS ;
 int PF_KTHREAD ;
 int SVC_MODE ;
 int THREAD_NOTIFY_COPY ;
 int clear_ptrace_hw_breakpoint (struct task_struct*) ;
 struct pt_regs* current_pt_regs () ;
 int get_domain () ;
 int get_tpuser () ;
 scalar_t__ likely (int) ;
 int memset (struct pt_regs*,int ,int) ;
 scalar_t__ ret_from_fork ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;
 struct thread_info* task_thread_info (struct task_struct*) ;
 int thread_notify (int ,struct thread_info*) ;

int
copy_thread(unsigned long clone_flags, unsigned long stack_start,
     unsigned long stk_sz, struct task_struct *p)
{
 struct thread_info *thread = task_thread_info(p);
 struct pt_regs *childregs = task_pt_regs(p);

 memset(&thread->cpu_context, 0, sizeof(struct cpu_context_save));
 if (likely(!(p->flags & PF_KTHREAD))) {
  *childregs = *current_pt_regs();
  childregs->ARM_r0 = 0;
  if (stack_start)
   childregs->ARM_sp = stack_start;
 } else {
  memset(childregs, 0, sizeof(struct pt_regs));
  thread->cpu_context.r4 = stk_sz;
  thread->cpu_context.r5 = stack_start;
  childregs->ARM_cpsr = SVC_MODE;
 }
 thread->cpu_context.pc = (unsigned long)ret_from_fork;
 thread->cpu_context.sp = (unsigned long)childregs;

 clear_ptrace_hw_breakpoint(p);

 if (clone_flags & CLONE_SETTLS)
  thread->tp_value[0] = childregs->ARM_r3;
 thread->tp_value[1] = get_tpuser();

 thread_notify(THREAD_NOTIFY_COPY, thread);





 return 0;
}
