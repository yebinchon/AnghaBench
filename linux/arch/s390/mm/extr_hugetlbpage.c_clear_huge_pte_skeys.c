
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;
struct mm_struct {int dummy; } ;


 int PG_arch_1 ;
 unsigned long PMD_MASK ;
 unsigned long PMD_SIZE ;
 unsigned long PUD_MASK ;
 unsigned long PUD_SIZE ;
 unsigned long _REGION_ENTRY_TYPE_MASK ;
 unsigned long _REGION_ENTRY_TYPE_R3 ;
 unsigned long _SEGMENT_ENTRY_INVALID ;
 int __pmd (unsigned long) ;
 int __pud (unsigned long) ;
 int __storage_key_init_range (unsigned long,unsigned long) ;
 int mm_uses_skeys (struct mm_struct*) ;
 struct page* pmd_page (int ) ;
 struct page* pud_page (int ) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void clear_huge_pte_skeys(struct mm_struct *mm, unsigned long rste)
{
 struct page *page;
 unsigned long size, paddr;

 if (!mm_uses_skeys(mm) ||
     rste & _SEGMENT_ENTRY_INVALID)
  return;

 if ((rste & _REGION_ENTRY_TYPE_MASK) == _REGION_ENTRY_TYPE_R3) {
  page = pud_page(__pud(rste));
  size = PUD_SIZE;
  paddr = rste & PUD_MASK;
 } else {
  page = pmd_page(__pmd(rste));
  size = PMD_SIZE;
  paddr = rste & PMD_MASK;
 }

 if (!test_and_set_bit(PG_arch_1, &page->flags))
  __storage_key_init_range(paddr, paddr + size - 1);
}
