
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct mm_struct* mm; } ;
struct pt_regs {int dummy; } ;
struct mm_struct {int mmap_sem; } ;


 int BUS_ADRERR ;
 int SIGBUS ;
 struct task_struct* current ;
 int force_sig_info_fault (int ,int ,unsigned long) ;
 int no_context (struct pt_regs*,unsigned long,unsigned long) ;
 int up_read (int *) ;
 int user_mode (struct pt_regs*) ;

__attribute__((used)) static void
do_sigbus(struct pt_regs *regs, unsigned long error_code, unsigned long address)
{
 struct task_struct *tsk = current;
 struct mm_struct *mm = tsk->mm;

 up_read(&mm->mmap_sem);


 if (!user_mode(regs))
  no_context(regs, error_code, address);

 force_sig_info_fault(SIGBUS, BUS_ADRERR, address);
}
