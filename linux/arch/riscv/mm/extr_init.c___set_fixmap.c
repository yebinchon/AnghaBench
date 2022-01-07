
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int phys_addr_t ;
typedef int pgprot_t ;
typedef enum fixed_addresses { ____Placeholder_fixed_addresses } fixed_addresses ;


 int BUG_ON (int) ;
 int FIX_HOLE ;
 int PAGE_SHIFT ;
 int __end_of_fixed_addresses ;
 unsigned long __fix_to_virt (int) ;
 int * fixmap_pte ;
 int init_mm ;
 int local_flush_tlb_page (unsigned long) ;
 int pfn_pte (int,int ) ;
 scalar_t__ pgprot_val (int ) ;
 int pte_clear (int *,unsigned long,int *) ;
 size_t pte_index (unsigned long) ;
 int set_pte (int *,int ) ;

void __set_fixmap(enum fixed_addresses idx, phys_addr_t phys, pgprot_t prot)
{
 unsigned long addr = __fix_to_virt(idx);
 pte_t *ptep;

 BUG_ON(idx <= FIX_HOLE || idx >= __end_of_fixed_addresses);

 ptep = &fixmap_pte[pte_index(addr)];

 if (pgprot_val(prot)) {
  set_pte(ptep, pfn_pte(phys >> PAGE_SHIFT, prot));
 } else {
  pte_clear(&init_mm, addr, ptep);
  local_flush_tlb_page(addr);
 }
}
