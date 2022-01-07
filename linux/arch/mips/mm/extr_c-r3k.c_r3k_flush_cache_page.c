
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 unsigned long KSEG0ADDR (unsigned long) ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int VM_EXEC ;
 int _PAGE_PRESENT ;
 scalar_t__ cpu_context (int ,struct mm_struct*) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int * pmd_offset (int *,unsigned long) ;
 int pr_debug (char*,scalar_t__,unsigned long) ;
 int * pte_offset (int *,unsigned long) ;
 int pte_val (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int r3k_flush_dcache_range (unsigned long,scalar_t__) ;
 int r3k_flush_icache_range (unsigned long,scalar_t__) ;
 int smp_processor_id () ;

__attribute__((used)) static void r3k_flush_cache_page(struct vm_area_struct *vma,
     unsigned long addr, unsigned long pfn)
{
 unsigned long kaddr = KSEG0ADDR(pfn << PAGE_SHIFT);
 int exec = vma->vm_flags & VM_EXEC;
 struct mm_struct *mm = vma->vm_mm;
 pgd_t *pgdp;
 pud_t *pudp;
 pmd_t *pmdp;
 pte_t *ptep;

 pr_debug("cpage[%08llx,%08lx]\n",
   cpu_context(smp_processor_id(), mm), addr);


 if (cpu_context(smp_processor_id(), mm) == 0)
  return;

 pgdp = pgd_offset(mm, addr);
 pudp = pud_offset(pgdp, addr);
 pmdp = pmd_offset(pudp, addr);
 ptep = pte_offset(pmdp, addr);


 if (!(pte_val(*ptep) & _PAGE_PRESENT))
  return;

 r3k_flush_dcache_range(kaddr, kaddr + PAGE_SIZE);
 if (exec)
  r3k_flush_icache_range(kaddr, kaddr + PAGE_SIZE);
}
