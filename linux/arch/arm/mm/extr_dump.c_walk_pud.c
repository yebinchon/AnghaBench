
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_state {int dummy; } ;
typedef int pud_t ;
typedef int pgd_t ;


 unsigned int PTRS_PER_PUD ;
 unsigned int PUD_SIZE ;
 int note_page (struct pg_state*,unsigned long,int,int ,int *) ;
 int pud_none (int ) ;
 int * pud_offset (int *,int ) ;
 int pud_val (int ) ;
 int walk_pmd (struct pg_state*,int *,unsigned long) ;

__attribute__((used)) static void walk_pud(struct pg_state *st, pgd_t *pgd, unsigned long start)
{
 pud_t *pud = pud_offset(pgd, 0);
 unsigned long addr;
 unsigned i;

 for (i = 0; i < PTRS_PER_PUD; i++, pud++) {
  addr = start + i * PUD_SIZE;
  if (!pud_none(*pud)) {
   walk_pmd(st, pud, addr);
  } else {
   note_page(st, addr, 2, pud_val(*pud), ((void*)0));
  }
 }
}
