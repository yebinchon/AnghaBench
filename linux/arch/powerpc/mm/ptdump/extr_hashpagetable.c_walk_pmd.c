
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_state {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;


 unsigned int PMD_SIZE ;
 unsigned int PTRS_PER_PMD ;
 int pmd_none (int ) ;
 int * pmd_offset (int *,int ) ;
 int walk_pte (struct pg_state*,int *,unsigned long) ;

__attribute__((used)) static void walk_pmd(struct pg_state *st, pud_t *pud, unsigned long start)
{
 pmd_t *pmd = pmd_offset(pud, 0);
 unsigned long addr;
 unsigned int i;

 for (i = 0; i < PTRS_PER_PMD; i++, pmd++) {
  addr = start + i * PMD_SIZE;
  if (!pmd_none(*pmd))

   walk_pte(st, pmd, addr);
 }
}
