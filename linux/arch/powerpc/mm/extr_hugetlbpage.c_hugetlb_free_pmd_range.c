
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_gather {int mm; } ;
typedef int pud_t ;
typedef int pmd_t ;
typedef int hugepd_t ;


 int PMD_SHIFT ;
 unsigned long PUD_MASK ;
 int WARN_ON (int) ;
 int __hugepd (int ) ;
 int free_hugepd_range (struct mmu_gather*,int *,int ,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int hugepd_shift (int ) ;
 int is_hugepd (int ) ;
 int mm_dec_nr_pmds (int ) ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 int pmd_free_tlb (struct mmu_gather*,int *,unsigned long) ;
 int pmd_none_or_clear_bad (int *) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_val (int ) ;
 int pud_clear (int *) ;

__attribute__((used)) static void hugetlb_free_pmd_range(struct mmu_gather *tlb, pud_t *pud,
       unsigned long addr, unsigned long end,
       unsigned long floor, unsigned long ceiling)
{
 pmd_t *pmd;
 unsigned long next;
 unsigned long start;

 start = addr;
 do {
  unsigned long more;

  pmd = pmd_offset(pud, addr);
  next = pmd_addr_end(addr, end);
  if (!is_hugepd(__hugepd(pmd_val(*pmd)))) {




   WARN_ON(!pmd_none_or_clear_bad(pmd));
   continue;
  }






  more = addr + (1 << hugepd_shift(*(hugepd_t *)pmd));
  if (more > next)
   next = more;

  free_hugepd_range(tlb, (hugepd_t *)pmd, PMD_SHIFT,
      addr, next, floor, ceiling);
 } while (addr = next, addr != end);

 start &= PUD_MASK;
 if (start < floor)
  return;
 if (ceiling) {
  ceiling &= PUD_MASK;
  if (!ceiling)
   return;
 }
 if (end - 1 > ceiling - 1)
  return;

 pmd = pmd_offset(pud, start);
 pud_clear(pud);
 pmd_free_tlb(tlb, pmd, start);
 mm_dec_nr_pmds(tlb->mm);
}
