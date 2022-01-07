
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {unsigned long tp_value; int addr_limit; } ;
struct TYPE_2__ {int cp0_status; unsigned long reg16; unsigned long reg17; unsigned long reg29; unsigned long reg31; int bd_emu_frame; } ;
struct task_struct {int flags; TYPE_1__ thread; } ;
struct pt_regs {unsigned long cp0_status; unsigned long* regs; } ;


 int BD_EMUFRAME_NONE ;
 unsigned long CLONE_SETTLS ;
 int KERNEL_DS ;
 int PF_KTHREAD ;
 int ST0_CU1 ;
 int ST0_CU2 ;
 unsigned long ST0_EXL ;
 unsigned long ST0_IEC ;
 unsigned long ST0_IEP ;
 unsigned long ST0_KUC ;
 unsigned long ST0_KUP ;
 unsigned long THREAD_SIZE ;
 int TIF_FPUBOUND ;
 int TIF_MSA_CTX_LIVE ;
 int TIF_USEDFPU ;
 int TIF_USEDMSA ;
 int USER_DS ;
 int atomic_set (int *,int ) ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 struct pt_regs* current_pt_regs () ;
 int memset (struct pt_regs*,int ,int) ;
 int read_c0_status () ;
 scalar_t__ ret_from_fork ;
 scalar_t__ ret_from_kernel_thread ;
 scalar_t__ task_stack_page (struct task_struct*) ;
 struct thread_info* task_thread_info (struct task_struct*) ;
 scalar_t__ unlikely (int) ;

int copy_thread_tls(unsigned long clone_flags, unsigned long usp,
 unsigned long kthread_arg, struct task_struct *p, unsigned long tls)
{
 struct thread_info *ti = task_thread_info(p);
 struct pt_regs *childregs, *regs = current_pt_regs();
 unsigned long childksp;

 childksp = (unsigned long)task_stack_page(p) + THREAD_SIZE - 32;


 childregs = (struct pt_regs *) childksp - 1;

 childksp = (unsigned long) childregs;
 p->thread.cp0_status = read_c0_status() & ~(ST0_CU2|ST0_CU1);
 if (unlikely(p->flags & PF_KTHREAD)) {

  unsigned long status = p->thread.cp0_status;
  memset(childregs, 0, sizeof(struct pt_regs));
  ti->addr_limit = KERNEL_DS;
  p->thread.reg16 = usp;
  p->thread.reg17 = kthread_arg;
  p->thread.reg29 = childksp;
  p->thread.reg31 = (unsigned long) ret_from_kernel_thread;




  status |= ST0_EXL;

  childregs->cp0_status = status;
  return 0;
 }


 *childregs = *regs;
 childregs->regs[7] = 0;
 childregs->regs[2] = 0;
 if (usp)
  childregs->regs[29] = usp;
 ti->addr_limit = USER_DS;

 p->thread.reg29 = (unsigned long) childregs;
 p->thread.reg31 = (unsigned long) ret_from_fork;





 childregs->cp0_status &= ~(ST0_CU2|ST0_CU1);

 clear_tsk_thread_flag(p, TIF_USEDFPU);
 clear_tsk_thread_flag(p, TIF_USEDMSA);
 clear_tsk_thread_flag(p, TIF_MSA_CTX_LIVE);





 atomic_set(&p->thread.bd_emu_frame, BD_EMUFRAME_NONE);

 if (clone_flags & CLONE_SETTLS)
  ti->tp_value = tls;

 return 0;
}
