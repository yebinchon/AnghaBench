
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_gather {int mm; } ;
typedef int pgd_t ;
typedef int hugepd_t ;


 int PGDIR_SHIFT ;
 int __hugepd (int ) ;
 int free_hugepd_range (struct mmu_gather*,int *,int ,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int hugepd_shift (int ) ;
 int hugetlb_free_pud_range (struct mmu_gather*,int *,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int is_hugepd (int ) ;
 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pgd_none_or_clear_bad (int *) ;
 int * pgd_offset (int ,unsigned long) ;
 int pgd_val (int ) ;

void hugetlb_free_pgd_range(struct mmu_gather *tlb,
       unsigned long addr, unsigned long end,
       unsigned long floor, unsigned long ceiling)
{
 pgd_t *pgd;
 unsigned long next;
 do {
  next = pgd_addr_end(addr, end);
  pgd = pgd_offset(tlb->mm, addr);
  if (!is_hugepd(__hugepd(pgd_val(*pgd)))) {
   if (pgd_none_or_clear_bad(pgd))
    continue;
   hugetlb_free_pud_range(tlb, pgd, addr, next, floor, ceiling);
  } else {
   unsigned long more;






   more = addr + (1 << hugepd_shift(*(hugepd_t *)pgd));
   if (more > next)
    next = more;

   free_hugepd_range(tlb, (hugepd_t *)pgd, PGDIR_SHIFT,
       addr, next, floor, ceiling);
  }
 } while (addr = next, addr != end);
}
