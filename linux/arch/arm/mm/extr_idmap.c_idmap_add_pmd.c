
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pmd_t ;


 unsigned long PMD_MASK ;
 scalar_t__ SECTION_SIZE ;
 int __pmd (unsigned long) ;
 int flush_pmd_entry (int *) ;
 int * pmd_offset (int *,unsigned long) ;

__attribute__((used)) static void idmap_add_pmd(pud_t *pud, unsigned long addr, unsigned long end,
 unsigned long prot)
{
 pmd_t *pmd = pmd_offset(pud, addr);

 addr = (addr & PMD_MASK) | prot;
 pmd[0] = __pmd(addr);
 addr += SECTION_SIZE;
 pmd[1] = __pmd(addr);
 flush_pmd_entry(pmd);
}
