
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int phys_addr_t ;
typedef int pgprot_t ;


 int PAGE_SHIFT ;
 int X86_FEATURE_PGE ;
 int _PAGE_GLOBAL ;
 int _PAGE_PRESENT ;
 scalar_t__ boot_cpu_has (int ) ;
 int pfn_pte (int,int ) ;
 int pgprot_val (int ) ;
 int pte_set_flags (int ,int ) ;
 int set_pte_vaddr (unsigned long,int ) ;

void cea_set_pte(void *cea_vaddr, phys_addr_t pa, pgprot_t flags)
{
 unsigned long va = (unsigned long) cea_vaddr;
 pte_t pte = pfn_pte(pa >> PAGE_SHIFT, flags);
 if (boot_cpu_has(X86_FEATURE_PGE) &&
     (pgprot_val(flags) & _PAGE_PRESENT))
  pte = pte_set_flags(pte, _PAGE_GLOBAL);

 set_pte_vaddr(va, pte);
}
