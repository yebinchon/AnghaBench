
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct host_vm_change {int index; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 unsigned long ADD_ROUND (unsigned long,int ) ;
 struct host_vm_change INIT_HVC (struct mm_struct*,int,int) ;
 int PAGE_MASK ;
 unsigned long PAGE_SIZE ;
 int PGDIR_SIZE ;
 int PMD_SIZE ;
 int PUD_SIZE ;
 int add_mmap (unsigned long,int,unsigned long,int ,struct host_vm_change*) ;
 int add_mprotect (unsigned long,unsigned long,int ,struct host_vm_change*) ;
 int add_munmap (unsigned long,unsigned long,struct host_vm_change*) ;
 int do_ops (struct host_vm_change*,int ,int) ;
 struct mm_struct init_mm ;
 int panic (char*,int) ;
 scalar_t__ pgd_newpage (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int pgd_present (int ) ;
 scalar_t__ pmd_newpage (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_present (int ) ;
 scalar_t__ pte_newpage (int ) ;
 scalar_t__ pte_newprot (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 scalar_t__ pte_present (int ) ;
 int pte_val (int ) ;
 scalar_t__ pud_newpage (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_present (int ) ;

__attribute__((used)) static int flush_tlb_kernel_range_common(unsigned long start, unsigned long end)
{
 struct mm_struct *mm;
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;
 unsigned long addr, last;
 int updated = 0, err = 0, force = 0, userspace = 0;
 struct host_vm_change hvc;

 mm = &init_mm;
 hvc = INIT_HVC(mm, force, userspace);
 for (addr = start; addr < end;) {
  pgd = pgd_offset(mm, addr);
  if (!pgd_present(*pgd)) {
   last = ADD_ROUND(addr, PGDIR_SIZE);
   if (last > end)
    last = end;
   if (pgd_newpage(*pgd)) {
    updated = 1;
    err = add_munmap(addr, last - addr, &hvc);
    if (err < 0)
     panic("munmap failed, errno = %d\n",
           -err);
   }
   addr = last;
   continue;
  }

  pud = pud_offset(pgd, addr);
  if (!pud_present(*pud)) {
   last = ADD_ROUND(addr, PUD_SIZE);
   if (last > end)
    last = end;
   if (pud_newpage(*pud)) {
    updated = 1;
    err = add_munmap(addr, last - addr, &hvc);
    if (err < 0)
     panic("munmap failed, errno = %d\n",
           -err);
   }
   addr = last;
   continue;
  }

  pmd = pmd_offset(pud, addr);
  if (!pmd_present(*pmd)) {
   last = ADD_ROUND(addr, PMD_SIZE);
   if (last > end)
    last = end;
   if (pmd_newpage(*pmd)) {
    updated = 1;
    err = add_munmap(addr, last - addr, &hvc);
    if (err < 0)
     panic("munmap failed, errno = %d\n",
           -err);
   }
   addr = last;
   continue;
  }

  pte = pte_offset_kernel(pmd, addr);
  if (!pte_present(*pte) || pte_newpage(*pte)) {
   updated = 1;
   err = add_munmap(addr, PAGE_SIZE, &hvc);
   if (err < 0)
    panic("munmap failed, errno = %d\n",
          -err);
   if (pte_present(*pte))
    err = add_mmap(addr, pte_val(*pte) & PAGE_MASK,
            PAGE_SIZE, 0, &hvc);
  }
  else if (pte_newprot(*pte)) {
   updated = 1;
   err = add_mprotect(addr, PAGE_SIZE, 0, &hvc);
  }
  addr += PAGE_SIZE;
 }
 if (!err)
  err = do_ops(&hvc, hvc.index, 1);

 if (err < 0)
  panic("flush_tlb_kernel failed, errno = %d\n", err);
 return updated;
}
