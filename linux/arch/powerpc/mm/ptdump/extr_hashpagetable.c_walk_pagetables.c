
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_state {int dummy; } ;
typedef int pgd_t ;


 unsigned int KERN_VIRT_START ;
 unsigned int PGDIR_SIZE ;
 unsigned int PTRS_PER_PGD ;
 int pgd_none (int ) ;
 int * pgd_offset_k (unsigned long) ;
 int walk_pud (struct pg_state*,int *,unsigned long) ;

__attribute__((used)) static void walk_pagetables(struct pg_state *st)
{
 pgd_t *pgd = pgd_offset_k(0UL);
 unsigned int i;
 unsigned long addr;





 for (i = 0; i < PTRS_PER_PGD; i++, pgd++) {
  addr = KERN_VIRT_START + i * PGDIR_SIZE;
  if (!pgd_none(*pgd))

   walk_pud(st, pgd, addr);
 }
}
