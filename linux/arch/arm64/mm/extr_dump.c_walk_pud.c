
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_state {int dummy; } ;
typedef int pud_t ;
typedef int pgd_t ;


 int BUG_ON (int ) ;
 int READ_ONCE (int ) ;
 int note_page (struct pg_state*,unsigned long,int,int ) ;
 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 int pud_bad (int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 scalar_t__ pud_sect (int ) ;
 int pud_val (int ) ;
 int walk_pmd (struct pg_state*,int *,unsigned long,unsigned long) ;

__attribute__((used)) static void walk_pud(struct pg_state *st, pgd_t *pgdp, unsigned long start,
       unsigned long end)
{
 unsigned long next, addr = start;
 pud_t *pudp = pud_offset(pgdp, start);

 do {
  pud_t pud = READ_ONCE(*pudp);
  next = pud_addr_end(addr, end);

  if (pud_none(pud) || pud_sect(pud)) {
   note_page(st, addr, 2, pud_val(pud));
  } else {
   BUG_ON(pud_bad(pud));
   walk_pmd(st, pudp, addr, next);
  }
 } while (pudp++, addr = next, addr != end);
}
