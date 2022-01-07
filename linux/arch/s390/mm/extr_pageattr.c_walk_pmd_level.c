
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pmd_t ;


 int EINVAL ;
 unsigned long PMD_MASK ;
 unsigned long PMD_SIZE ;
 int cond_resched () ;
 int modify_pmd_page (int *,unsigned long,unsigned long) ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pmd_large (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int split_pmd_page (int *,unsigned long) ;
 int walk_pte_level (int *,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static int walk_pmd_level(pud_t *pudp, unsigned long addr, unsigned long end,
     unsigned long flags)
{
 unsigned long next;
 pmd_t *pmdp;
 int rc = 0;

 pmdp = pmd_offset(pudp, addr);
 do {
  if (pmd_none(*pmdp))
   return -EINVAL;
  next = pmd_addr_end(addr, end);
  if (pmd_large(*pmdp)) {
   if (addr & ~PMD_MASK || addr + PMD_SIZE > next) {
    rc = split_pmd_page(pmdp, addr);
    if (rc)
     return rc;
    continue;
   }
   modify_pmd_page(pmdp, addr, flags);
  } else {
   rc = walk_pte_level(pmdp, addr, next, flags);
   if (rc)
    return rc;
  }
  pmdp++;
  addr = next;
  cond_resched();
 } while (addr < end);
 return rc;
}
