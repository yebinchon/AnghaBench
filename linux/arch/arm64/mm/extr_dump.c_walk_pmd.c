
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_state {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;


 int BUG_ON (int ) ;
 int READ_ONCE (int ) ;
 int note_page (struct pg_state*,unsigned long,int,int ) ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 int pmd_bad (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 scalar_t__ pmd_sect (int ) ;
 int pmd_val (int ) ;
 int walk_pte (struct pg_state*,int *,unsigned long,unsigned long) ;

__attribute__((used)) static void walk_pmd(struct pg_state *st, pud_t *pudp, unsigned long start,
       unsigned long end)
{
 unsigned long next, addr = start;
 pmd_t *pmdp = pmd_offset(pudp, start);

 do {
  pmd_t pmd = READ_ONCE(*pmdp);
  next = pmd_addr_end(addr, end);

  if (pmd_none(pmd) || pmd_sect(pmd)) {
   note_page(st, addr, 3, pmd_val(pmd));
  } else {
   BUG_ON(pmd_bad(pmd));
   walk_pte(st, pmdp, addr, next);
  }
 } while (pmdp++, addr = next, addr != end);
}
