
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_gather {int mm; } ;
typedef int pud_t ;
typedef int pgd_t ;


 unsigned long PGDIR_MASK ;
 int hugetlb_free_pmd_range (struct mmu_gather*,int *,unsigned long,unsigned long,unsigned long,unsigned long) ;
 scalar_t__ is_hugetlb_pud (int ) ;
 int mm_dec_nr_puds (int ) ;
 int pgd_clear (int *) ;
 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 int pud_clear (int *) ;
 int pud_free_tlb (struct mmu_gather*,int *,unsigned long) ;
 scalar_t__ pud_none_or_clear_bad (int *) ;
 int * pud_offset (int *,unsigned long) ;

__attribute__((used)) static void hugetlb_free_pud_range(struct mmu_gather *tlb, pgd_t *pgd,
       unsigned long addr, unsigned long end,
       unsigned long floor, unsigned long ceiling)
{
 pud_t *pud;
 unsigned long next;
 unsigned long start;

 start = addr;
 pud = pud_offset(pgd, addr);
 do {
  next = pud_addr_end(addr, end);
  if (pud_none_or_clear_bad(pud))
   continue;
  if (is_hugetlb_pud(*pud))
   pud_clear(pud);
  else
   hugetlb_free_pmd_range(tlb, pud, addr, next, floor,
            ceiling);
 } while (pud++, addr = next, addr != end);

 start &= PGDIR_MASK;
 if (start < floor)
  return;
 if (ceiling) {
  ceiling &= PGDIR_MASK;
  if (!ceiling)
   return;
 }
 if (end - 1 > ceiling - 1)
  return;

 pud = pud_offset(pgd, start);
 pgd_clear(pgd);
 pud_free_tlb(tlb, pud, start);
 mm_dec_nr_puds(tlb->mm);
}
