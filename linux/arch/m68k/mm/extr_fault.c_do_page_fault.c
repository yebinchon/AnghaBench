
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_area_struct {int vm_flags; unsigned long vm_start; } ;
struct pt_regs {int pc; int sr; } ;
struct mm_struct {int mmap_sem; int * pgd; } ;
struct TYPE_4__ {unsigned long faddr; int code; void* signo; } ;
struct TYPE_5__ {TYPE_1__ thread; int min_flt; int maj_flt; struct mm_struct* mm; } ;


 int BUG () ;
 int BUS_ADRERR ;
 unsigned int FAULT_FLAG_ALLOW_RETRY ;
 unsigned int FAULT_FLAG_KILLABLE ;
 unsigned int FAULT_FLAG_TRIED ;
 unsigned int FAULT_FLAG_USER ;
 unsigned int FAULT_FLAG_WRITE ;
 int SEGV_ACCERR ;
 int SEGV_MAPERR ;
 void* SIGBUS ;
 void* SIGSEGV ;
 int VM_EXEC ;
 int VM_FAULT_ERROR ;
 int VM_FAULT_MAJOR ;
 int VM_FAULT_OOM ;
 int VM_FAULT_RETRY ;
 int VM_FAULT_SIGBUS ;
 int VM_FAULT_SIGSEGV ;
 int VM_GROWSDOWN ;
 int VM_IO ;
 int VM_READ ;
 int VM_WRITE ;
 TYPE_2__* current ;
 int down_read (int *) ;
 scalar_t__ expand_stack (struct vm_area_struct*,unsigned long) ;
 scalar_t__ fatal_signal_pending (TYPE_2__*) ;
 scalar_t__ faulthandler_disabled () ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int handle_mm_fault (struct vm_area_struct*,unsigned long,unsigned int) ;
 int pagefault_out_of_memory () ;
 int pr_debug (char*,...) ;
 unsigned long rdusp () ;
 int send_fault_sig (struct pt_regs*) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;
 scalar_t__ user_mode (struct pt_regs*) ;

int do_page_fault(struct pt_regs *regs, unsigned long address,
         unsigned long error_code)
{
 struct mm_struct *mm = current->mm;
 struct vm_area_struct * vma;
 vm_fault_t fault;
 unsigned int flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;

 pr_debug("do page fault:\nregs->sr=%#x, regs->pc=%#lx, address=%#lx, %ld, %p\n",
  regs->sr, regs->pc, address, error_code, mm ? mm->pgd : ((void*)0));





 if (faulthandler_disabled() || !mm)
  goto no_context;

 if (user_mode(regs))
  flags |= FAULT_FLAG_USER;
retry:
 down_read(&mm->mmap_sem);

 vma = find_vma(mm, address);
 if (!vma)
  goto map_err;
 if (vma->vm_flags & VM_IO)
  goto acc_err;
 if (vma->vm_start <= address)
  goto good_area;
 if (!(vma->vm_flags & VM_GROWSDOWN))
  goto map_err;
 if (user_mode(regs)) {




  if (address + 256 < rdusp())
   goto map_err;
 }
 if (expand_stack(vma, address))
  goto map_err;





good_area:
 pr_debug("do_page_fault: good_area\n");
 switch (error_code & 3) {
  default:

  case 2:
   if (!(vma->vm_flags & VM_WRITE))
    goto acc_err;
   flags |= FAULT_FLAG_WRITE;
   break;
  case 1:
   goto acc_err;
  case 0:
   if (!(vma->vm_flags & (VM_READ | VM_EXEC | VM_WRITE)))
    goto acc_err;
 }







 fault = handle_mm_fault(vma, address, flags);
 pr_debug("handle_mm_fault returns %x\n", fault);

 if ((fault & VM_FAULT_RETRY) && fatal_signal_pending(current))
  return 0;

 if (unlikely(fault & VM_FAULT_ERROR)) {
  if (fault & VM_FAULT_OOM)
   goto out_of_memory;
  else if (fault & VM_FAULT_SIGSEGV)
   goto map_err;
  else if (fault & VM_FAULT_SIGBUS)
   goto bus_err;
  BUG();
 }






 if (flags & FAULT_FLAG_ALLOW_RETRY) {
  if (fault & VM_FAULT_MAJOR)
   current->maj_flt++;
  else
   current->min_flt++;
  if (fault & VM_FAULT_RETRY) {


   flags &= ~FAULT_FLAG_ALLOW_RETRY;
   flags |= FAULT_FLAG_TRIED;







   goto retry;
  }
 }

 up_read(&mm->mmap_sem);
 return 0;





out_of_memory:
 up_read(&mm->mmap_sem);
 if (!user_mode(regs))
  goto no_context;
 pagefault_out_of_memory();
 return 0;

no_context:
 current->thread.signo = SIGBUS;
 current->thread.faddr = address;
 return send_fault_sig(regs);

bus_err:
 current->thread.signo = SIGBUS;
 current->thread.code = BUS_ADRERR;
 current->thread.faddr = address;
 goto send_sig;

map_err:
 current->thread.signo = SIGSEGV;
 current->thread.code = SEGV_MAPERR;
 current->thread.faddr = address;
 goto send_sig;

acc_err:
 current->thread.signo = SIGSEGV;
 current->thread.code = SEGV_ACCERR;
 current->thread.faddr = address;

send_sig:
 up_read(&mm->mmap_sem);
 return send_fault_sig(regs);
}
