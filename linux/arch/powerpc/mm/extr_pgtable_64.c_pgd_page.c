
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pgd_t ;


 int VM_WARN_ON (int) ;
 int pgd_huge (int ) ;
 scalar_t__ pgd_is_leaf (int ) ;
 int pgd_page_vaddr (int ) ;
 int pgd_pte (int ) ;
 struct page* pte_page (int ) ;
 struct page* virt_to_page (int ) ;

struct page *pgd_page(pgd_t pgd)
{
 if (pgd_is_leaf(pgd)) {
  VM_WARN_ON(!pgd_huge(pgd));
  return pte_page(pgd_pte(pgd));
 }
 return virt_to_page(pgd_page_vaddr(pgd));
}
