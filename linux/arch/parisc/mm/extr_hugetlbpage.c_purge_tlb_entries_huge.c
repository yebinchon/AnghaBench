
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 unsigned long HPAGE_MASK ;
 int HPAGE_SHIFT ;
 int REAL_HPAGE_SHIFT ;
 unsigned long _HUGE_PAGE_SIZE_ENCODING_DEFAULT ;
 int purge_tlb_entries (struct mm_struct*,unsigned long) ;

__attribute__((used)) static inline void purge_tlb_entries_huge(struct mm_struct *mm, unsigned long addr)
{
 int i;



 BUILD_BUG_ON(REAL_HPAGE_SHIFT > HPAGE_SHIFT);

 addr &= HPAGE_MASK;
 addr |= _HUGE_PAGE_SIZE_ENCODING_DEFAULT;

 for (i = 0; i < (1 << (HPAGE_SHIFT-REAL_HPAGE_SHIFT)); i++) {
  purge_tlb_entries(mm, addr);
  addr += (1UL << REAL_HPAGE_SHIFT);
 }
}
