
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int hugetlb_pte_count; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef int pte_t ;


 unsigned long HPAGE_SIZE ;
 unsigned int PAGE_SHIFT ;
 unsigned int PMD_SHIFT ;
 unsigned long PMD_SIZE ;
 unsigned int PUD_SHIFT ;
 unsigned long PUD_SIZE ;
 unsigned long REAL_HPAGE_SIZE ;
 int __pte (unsigned long) ;
 unsigned int huge_tte_to_shift (int ) ;
 unsigned long huge_tte_to_size (int ) ;
 int maybe_tlb_batch_add (struct mm_struct*,unsigned long,int *,int ,int ,unsigned int) ;
 scalar_t__ pte_none (int ) ;
 scalar_t__ pte_present (int ) ;

pte_t huge_ptep_get_and_clear(struct mm_struct *mm, unsigned long addr,
         pte_t *ptep)
{
 unsigned int i, nptes, orig_shift, shift;
 unsigned long size;
 pte_t entry;

 entry = *ptep;
 size = huge_tte_to_size(entry);

 shift = PAGE_SHIFT;
 if (size >= PUD_SIZE)
  shift = PUD_SHIFT;
 else if (size >= PMD_SIZE)
  shift = PMD_SHIFT;
 else
  shift = PAGE_SHIFT;

 nptes = size >> shift;
 orig_shift = pte_none(entry) ? PAGE_SHIFT : huge_tte_to_shift(entry);

 if (pte_present(entry))
  mm->context.hugetlb_pte_count -= nptes;

 addr &= ~(size - 1);
 for (i = 0; i < nptes; i++)
  ptep[i] = __pte(0UL);

 maybe_tlb_batch_add(mm, addr, ptep, entry, 0, orig_shift);

 if (size == HPAGE_SIZE)
  maybe_tlb_batch_add(mm, addr + REAL_HPAGE_SIZE, ptep, entry, 0,
        orig_shift);

 return entry;
}
