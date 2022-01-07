
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_area_struct {unsigned long vm_start; int vm_flags; } ;
struct mm_struct {int mmap_sem; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
struct TYPE_3__ {int min_flt; int maj_flt; struct mm_struct* mm; } ;


 int ARCH_IS_STACKGROW (unsigned long) ;
 int BUG () ;
 int EACCES ;
 int EFAULT ;
 unsigned int FAULT_FLAG_ALLOW_RETRY ;
 unsigned int FAULT_FLAG_KILLABLE ;
 unsigned int FAULT_FLAG_TRIED ;
 unsigned int FAULT_FLAG_USER ;
 unsigned int FAULT_FLAG_WRITE ;
 int SEGV_ACCERR ;
 int SEGV_MAPERR ;
 int VM_EXEC ;
 int VM_FAULT_ERROR ;
 int VM_FAULT_MAJOR ;
 int VM_FAULT_OOM ;
 int VM_FAULT_RETRY ;
 int VM_FAULT_SIGBUS ;
 int VM_FAULT_SIGSEGV ;
 int VM_GROWSDOWN ;
 int VM_READ ;
 int VM_WRITE ;
 int WARN_ON (int) ;
 TYPE_1__* current ;
 int down_read (int *) ;
 scalar_t__ expand_stack (struct vm_area_struct*,unsigned long) ;
 scalar_t__ fatal_signal_pending (TYPE_1__*) ;
 scalar_t__ faulthandler_disabled () ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 int flush_tlb_page (struct vm_area_struct*,unsigned long) ;
 int handle_mm_fault (struct vm_area_struct*,unsigned long,unsigned int) ;
 int pagefault_out_of_memory () ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int * pmd_offset (int *,unsigned long) ;
 int pte_dirty (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 int pte_present (int ) ;
 int pte_young (int ) ;
 int * pud_offset (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;

int handle_page_fault(unsigned long address, unsigned long ip,
        int is_write, int is_user, int *code_out)
{
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *vma;
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;
 int err = -EFAULT;
 unsigned int flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;

 *code_out = SEGV_MAPERR;





 if (faulthandler_disabled())
  goto out_nosemaphore;

 if (is_user)
  flags |= FAULT_FLAG_USER;
retry:
 down_read(&mm->mmap_sem);
 vma = find_vma(mm, address);
 if (!vma)
  goto out;
 else if (vma->vm_start <= address)
  goto good_area;
 else if (!(vma->vm_flags & VM_GROWSDOWN))
  goto out;
 else if (is_user && !ARCH_IS_STACKGROW(address))
  goto out;
 else if (expand_stack(vma, address))
  goto out;

good_area:
 *code_out = SEGV_ACCERR;
 if (is_write) {
  if (!(vma->vm_flags & VM_WRITE))
   goto out;
  flags |= FAULT_FLAG_WRITE;
 } else {

  if (!(vma->vm_flags & (VM_READ | VM_EXEC)))
   goto out;
 }

 do {
  vm_fault_t fault;

  fault = handle_mm_fault(vma, address, flags);

  if ((fault & VM_FAULT_RETRY) && fatal_signal_pending(current))
   goto out_nosemaphore;

  if (unlikely(fault & VM_FAULT_ERROR)) {
   if (fault & VM_FAULT_OOM) {
    goto out_of_memory;
   } else if (fault & VM_FAULT_SIGSEGV) {
    goto out;
   } else if (fault & VM_FAULT_SIGBUS) {
    err = -EACCES;
    goto out;
   }
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

  pgd = pgd_offset(mm, address);
  pud = pud_offset(pgd, address);
  pmd = pmd_offset(pud, address);
  pte = pte_offset_kernel(pmd, address);
 } while (!pte_present(*pte));
 err = 0;
 flush_tlb_page(vma, address);
out:
 up_read(&mm->mmap_sem);
out_nosemaphore:
 return err;

out_of_memory:




 up_read(&mm->mmap_sem);
 if (!is_user)
  goto out_nosemaphore;
 pagefault_out_of_memory();
 return 0;
}
