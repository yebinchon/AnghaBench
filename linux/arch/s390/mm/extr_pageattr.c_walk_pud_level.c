
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int p4d_t ;


 int EINVAL ;
 unsigned long PUD_MASK ;
 unsigned long PUD_SIZE ;
 int cond_resched () ;
 int modify_pud_page (int *,unsigned long,unsigned long) ;
 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pud_large (int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int split_pud_page (int *,unsigned long) ;
 int walk_pmd_level (int *,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static int walk_pud_level(p4d_t *p4d, unsigned long addr, unsigned long end,
     unsigned long flags)
{
 unsigned long next;
 pud_t *pudp;
 int rc = 0;

 pudp = pud_offset(p4d, addr);
 do {
  if (pud_none(*pudp))
   return -EINVAL;
  next = pud_addr_end(addr, end);
  if (pud_large(*pudp)) {
   if (addr & ~PUD_MASK || addr + PUD_SIZE > next) {
    rc = split_pud_page(pudp, addr);
    if (rc)
     break;
    continue;
   }
   modify_pud_page(pudp, addr, flags);
  } else {
   rc = walk_pmd_level(pudp, addr, next, flags);
  }
  pudp++;
  addr = next;
  cond_resched();
 } while (addr < end && !rc);
 return rc;
}
