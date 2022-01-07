
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pud_t ;


 int VM_WARN_ON (int) ;
 struct page* pte_page (int ) ;
 int pud_huge (int ) ;
 scalar_t__ pud_is_leaf (int ) ;
 int pud_page_vaddr (int ) ;
 int pud_pte (int ) ;
 struct page* virt_to_page (int ) ;

struct page *pud_page(pud_t pud)
{
 if (pud_is_leaf(pud)) {
  VM_WARN_ON(!pud_huge(pud));
  return pte_page(pud_pte(pud));
 }
 return virt_to_page(pud_page_vaddr(pud));
}
