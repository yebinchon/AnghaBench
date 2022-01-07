
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pmd_t ;


 int VM_WARN_ON (int) ;
 scalar_t__ pmd_huge (int ) ;
 scalar_t__ pmd_is_leaf (int ) ;
 scalar_t__ pmd_large (int ) ;
 int pmd_page_vaddr (int ) ;
 int pmd_pte (int ) ;
 struct page* pte_page (int ) ;
 struct page* virt_to_page (int ) ;

struct page *pmd_page(pmd_t pmd)
{
 if (pmd_is_leaf(pmd)) {
  VM_WARN_ON(!(pmd_large(pmd) || pmd_huge(pmd)));
  return pte_page(pmd_pte(pmd));
 }
 return virt_to_page(pmd_page_vaddr(pmd));
}
