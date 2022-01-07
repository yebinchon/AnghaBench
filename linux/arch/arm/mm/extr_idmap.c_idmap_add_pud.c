
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pgd_t ;


 int idmap_add_pmd (int *,unsigned long,unsigned long,unsigned long) ;
 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 int * pud_offset (int *,unsigned long) ;

__attribute__((used)) static void idmap_add_pud(pgd_t *pgd, unsigned long addr, unsigned long end,
 unsigned long prot)
{
 pud_t *pud = pud_offset(pgd, addr);
 unsigned long next;

 do {
  next = pud_addr_end(addr, end);
  idmap_add_pmd(pud, addr, next, prot);
 } while (pud++, addr = next, addr != end);
}
