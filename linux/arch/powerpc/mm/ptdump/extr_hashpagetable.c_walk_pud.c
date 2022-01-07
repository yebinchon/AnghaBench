
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_state {int dummy; } ;
typedef int pud_t ;
typedef int pgd_t ;


 unsigned int PTRS_PER_PUD ;
 unsigned int PUD_SIZE ;
 int pud_none (int ) ;
 int * pud_offset (int *,int ) ;
 int walk_pmd (struct pg_state*,int *,unsigned long) ;

__attribute__((used)) static void walk_pud(struct pg_state *st, pgd_t *pgd, unsigned long start)
{
 pud_t *pud = pud_offset(pgd, 0);
 unsigned long addr;
 unsigned int i;

 for (i = 0; i < PTRS_PER_PUD; i++, pud++) {
  addr = start + i * PUD_SIZE;
  if (!pud_none(*pud))

   walk_pmd(st, pud, addr);
 }
}
