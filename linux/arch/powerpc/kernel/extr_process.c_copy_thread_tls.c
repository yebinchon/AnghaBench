
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread_info {int flags; } ;
struct TYPE_5__ {unsigned long ksp; unsigned long ksp_limit; scalar_t__ tidr; int dscr; int dscr_inherit; int * vr_save_area; int * fp_save_area; int ** ptrace_bps; struct pt_regs* regs; } ;
struct task_struct {int flags; TYPE_2__ thread; } ;
struct pt_regs {unsigned long* gpr; int msr; void* nip; int ppr; int softe; } ;
struct TYPE_4__ {int dscr_inherit; } ;
struct TYPE_6__ {TYPE_1__ thread; } ;


 int CHECK_FULL_REGS (struct pt_regs*) ;
 unsigned long CLONE_SETTLS ;
 int CPU_FTR_DSCR ;
 int CPU_FTR_HAS_PPR ;
 int DEFAULT_PPR ;
 int IRQS_ENABLED ;
 int MSR_FP ;
 int MSR_VEC ;
 int MSR_VSX ;
 int PF_KTHREAD ;
 int SPRN_DSCR ;
 scalar_t__ STACK_FRAME_OVERHEAD ;
 unsigned long THREAD_SIZE ;
 int TIF_32BIT ;
 int _TIF_RESTOREALL ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 scalar_t__ cpu_has_feature (int ) ;
 TYPE_3__* current ;
 struct pt_regs* current_pt_regs () ;
 scalar_t__ end_of_stack (struct task_struct*) ;
 int is_32bit_task () ;
 int klp_init_thread_info (struct task_struct*) ;
 int memset (struct pt_regs*,int ,int) ;
 int mfspr (int ) ;
 void* ppc_function_entry (void (*) ()) ;
 int setup_ksp_vsid (struct task_struct*,unsigned long) ;
 scalar_t__ task_stack_page (struct task_struct*) ;
 struct thread_info* task_thread_info (struct task_struct*) ;
 scalar_t__ unlikely (int) ;

int copy_thread_tls(unsigned long clone_flags, unsigned long usp,
  unsigned long kthread_arg, struct task_struct *p,
  unsigned long tls)
{
 struct pt_regs *childregs, *kregs;
 extern void ret_from_fork(void);
 extern void ret_from_kernel_thread(void);
 void (*f)(void);
 unsigned long sp = (unsigned long)task_stack_page(p) + THREAD_SIZE;
 struct thread_info *ti = task_thread_info(p);

 klp_init_thread_info(p);


 sp -= sizeof(struct pt_regs);
 childregs = (struct pt_regs *) sp;
 if (unlikely(p->flags & PF_KTHREAD)) {

  memset(childregs, 0, sizeof(struct pt_regs));
  childregs->gpr[1] = sp + sizeof(struct pt_regs);

  if (usp)
   childregs->gpr[14] = ppc_function_entry((void *)usp);




  childregs->gpr[15] = kthread_arg;
  p->thread.regs = ((void*)0);
  ti->flags |= _TIF_RESTOREALL;
  f = ret_from_kernel_thread;
 } else {

  struct pt_regs *regs = current_pt_regs();
  CHECK_FULL_REGS(regs);
  *childregs = *regs;
  if (usp)
   childregs->gpr[1] = usp;
  p->thread.regs = childregs;
  childregs->gpr[3] = 0;
  if (clone_flags & CLONE_SETTLS) {





    childregs->gpr[2] = tls;
  }

  f = ret_from_fork;
 }
 childregs->msr &= ~(MSR_FP|MSR_VEC|MSR_VSX);
 sp -= STACK_FRAME_OVERHEAD;
 ((unsigned long *)sp)[0] = 0;
 sp -= sizeof(struct pt_regs);
 kregs = (struct pt_regs *) sp;
 sp -= STACK_FRAME_OVERHEAD;
 p->thread.ksp = sp;







 p->thread.fp_save_area = ((void*)0);




 setup_ksp_vsid(p, sp);
 kregs->nip = ppc_function_entry(f);
 return 0;
}
