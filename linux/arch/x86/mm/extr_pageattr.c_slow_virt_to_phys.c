
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef unsigned long phys_addr_t ;
typedef enum pg_level { ____Placeholder_pg_level } pg_level ;


 int BUG_ON (int) ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;


 unsigned long PMD_PAGE_MASK ;
 unsigned long PUD_PAGE_MASK ;
 int * lookup_address (unsigned long,int*) ;
 int pmd_pfn (int ) ;
 int pte_pfn (int ) ;
 int pud_pfn (int ) ;

phys_addr_t slow_virt_to_phys(void *__virt_addr)
{
 unsigned long virt_addr = (unsigned long)__virt_addr;
 phys_addr_t phys_addr;
 unsigned long offset;
 enum pg_level level;
 pte_t *pte;

 pte = lookup_address(virt_addr, &level);
 BUG_ON(!pte);






 switch (level) {
 case 129:
  phys_addr = (phys_addr_t)pud_pfn(*(pud_t *)pte) << PAGE_SHIFT;
  offset = virt_addr & ~PUD_PAGE_MASK;
  break;
 case 128:
  phys_addr = (phys_addr_t)pmd_pfn(*(pmd_t *)pte) << PAGE_SHIFT;
  offset = virt_addr & ~PMD_PAGE_MASK;
  break;
 default:
  phys_addr = (phys_addr_t)pte_pfn(*pte) << PAGE_SHIFT;
  offset = virt_addr & ~PAGE_MASK;
 }

 return (phys_addr_t)(phys_addr | offset);
}
