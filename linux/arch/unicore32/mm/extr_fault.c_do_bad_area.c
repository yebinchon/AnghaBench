
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct mm_struct* active_mm; } ;
struct pt_regs {int dummy; } ;
struct mm_struct {int dummy; } ;


 int SEGV_MAPERR ;
 int SIGSEGV ;
 int __do_kernel_fault (struct mm_struct*,unsigned long,unsigned int,struct pt_regs*) ;
 int __do_user_fault (unsigned long,unsigned int,int ,int ,struct pt_regs*) ;
 struct task_struct* current ;
 scalar_t__ user_mode (struct pt_regs*) ;

void do_bad_area(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
{
 struct task_struct *tsk = current;
 struct mm_struct *mm = tsk->active_mm;





 if (user_mode(regs))
  __do_user_fault(addr, fsr, SIGSEGV, SEGV_MAPERR, regs);
 else
  __do_kernel_fault(mm, addr, fsr, regs);
}
