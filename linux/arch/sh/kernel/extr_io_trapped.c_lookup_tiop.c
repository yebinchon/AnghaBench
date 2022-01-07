
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapped_io {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 struct trapped_io* pfn_to_kaddr (int ) ;
 int pgd_index (unsigned long) ;
 int pgd_present (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_present (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 int pte_pfn (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_present (int ) ;
 int * swapper_pg_dir ;

__attribute__((used)) static struct trapped_io *lookup_tiop(unsigned long address)
{
 pgd_t *pgd_k;
 pud_t *pud_k;
 pmd_t *pmd_k;
 pte_t *pte_k;
 pte_t entry;

 pgd_k = swapper_pg_dir + pgd_index(address);
 if (!pgd_present(*pgd_k))
  return ((void*)0);

 pud_k = pud_offset(pgd_k, address);
 if (!pud_present(*pud_k))
  return ((void*)0);

 pmd_k = pmd_offset(pud_k, address);
 if (!pmd_present(*pmd_k))
  return ((void*)0);

 pte_k = pte_offset_kernel(pmd_k, address);
 entry = *pte_k;

 return pfn_to_kaddr(pte_pfn(entry));
}
