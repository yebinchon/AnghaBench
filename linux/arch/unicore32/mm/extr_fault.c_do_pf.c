
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct task_struct {int min_flt; int maj_flt; struct mm_struct* mm; } ;
struct pt_regs {int UCreg_pc; } ;
struct mm_struct {int mmap_sem; } ;


 int BUS_ADRERR ;
 unsigned int FAULT_FLAG_ALLOW_RETRY ;
 unsigned int FAULT_FLAG_KILLABLE ;
 unsigned int FAULT_FLAG_USER ;
 unsigned int FAULT_FLAG_WRITE ;
 int SEGV_ACCERR ;
 int SEGV_MAPERR ;
 int SIGBUS ;
 int SIGSEGV ;
 int VM_FAULT_BADACCESS ;
 int VM_FAULT_BADMAP ;
 int VM_FAULT_ERROR ;
 int VM_FAULT_MAJOR ;
 int VM_FAULT_OOM ;
 int VM_FAULT_RETRY ;
 int VM_FAULT_SIGBUS ;
 int __do_kernel_fault (struct mm_struct*,unsigned long,unsigned int,struct pt_regs*) ;
 int __do_pf (struct mm_struct*,unsigned long,unsigned int,unsigned int,struct task_struct*) ;
 int __do_user_fault (unsigned long,unsigned int,int,int,struct pt_regs*) ;
 struct task_struct* current ;
 int down_read (int *) ;
 int down_read_trylock (int *) ;
 scalar_t__ fatal_signal_pending (struct task_struct*) ;
 scalar_t__ faulthandler_disabled () ;
 scalar_t__ likely (int) ;
 int might_sleep () ;
 int pagefault_out_of_memory () ;
 int search_exception_tables (int ) ;
 int up_read (int *) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static int do_pf(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
{
 struct task_struct *tsk;
 struct mm_struct *mm;
 int sig, code;
 vm_fault_t fault;
 unsigned int flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;

 tsk = current;
 mm = tsk->mm;





 if (faulthandler_disabled() || !mm)
  goto no_context;

 if (user_mode(regs))
  flags |= FAULT_FLAG_USER;
 if (!(fsr ^ 0x12))
  flags |= FAULT_FLAG_WRITE;






 if (!down_read_trylock(&mm->mmap_sem)) {
  if (!user_mode(regs)
      && !search_exception_tables(regs->UCreg_pc))
   goto no_context;
retry:
  down_read(&mm->mmap_sem);
 } else {





  might_sleep();





 }

 fault = __do_pf(mm, addr, fsr, flags, tsk);





 if ((fault & VM_FAULT_RETRY) && fatal_signal_pending(current))
  return 0;

 if (!(fault & VM_FAULT_ERROR) && (flags & FAULT_FLAG_ALLOW_RETRY)) {
  if (fault & VM_FAULT_MAJOR)
   tsk->maj_flt++;
  else
   tsk->min_flt++;
  if (fault & VM_FAULT_RETRY) {


   flags &= ~FAULT_FLAG_ALLOW_RETRY;
   goto retry;
  }
 }

 up_read(&mm->mmap_sem);




 if (likely(!(fault &
        (VM_FAULT_ERROR | VM_FAULT_BADMAP | VM_FAULT_BADACCESS))))
  return 0;





 if (!user_mode(regs))
  goto no_context;

 if (fault & VM_FAULT_OOM) {





  pagefault_out_of_memory();
  return 0;
 }

 if (fault & VM_FAULT_SIGBUS) {




  sig = SIGBUS;
  code = BUS_ADRERR;
 } else {




  sig = SIGSEGV;
  code = fault == VM_FAULT_BADACCESS ? SEGV_ACCERR : SEGV_MAPERR;
 }

 __do_user_fault(addr, fsr, sig, code, regs);
 return 0;

no_context:
 __do_kernel_fault(mm, addr, fsr, regs);
 return 0;
}
