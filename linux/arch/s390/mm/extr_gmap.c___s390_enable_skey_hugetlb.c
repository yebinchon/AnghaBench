
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;
struct mm_walk {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;


 unsigned long HPAGE_MASK ;
 unsigned long HPAGE_SIZE ;
 int PG_arch_1 ;
 unsigned long _SEGMENT_ENTRY_INVALID ;
 unsigned long _SEGMENT_ENTRY_WRITE ;
 int __storage_key_init_range (unsigned long,unsigned long) ;
 struct page* pmd_page (int ) ;
 unsigned long pmd_val (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int __s390_enable_skey_hugetlb(pte_t *pte, unsigned long addr,
          unsigned long hmask, unsigned long next,
          struct mm_walk *walk)
{
 pmd_t *pmd = (pmd_t *)pte;
 unsigned long start, end;
 struct page *page = pmd_page(*pmd);







 if (pmd_val(*pmd) & _SEGMENT_ENTRY_INVALID ||
     !(pmd_val(*pmd) & _SEGMENT_ENTRY_WRITE))
  return 0;

 start = pmd_val(*pmd) & HPAGE_MASK;
 end = start + HPAGE_SIZE - 1;
 __storage_key_init_range(start, end);
 set_bit(PG_arch_1, &page->flags);
 return 0;
}
