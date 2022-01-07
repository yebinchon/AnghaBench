
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_state {unsigned long start_address; } ;
typedef int pgd_t ;


 unsigned long PGDIR_MASK ;
 scalar_t__ PGDIR_SIZE ;
 unsigned int PTRS_PER_PGD ;
 int note_page (struct pg_state*,unsigned long,int,int ) ;
 unsigned int pgd_index (unsigned long) ;
 int pgd_is_leaf (int ) ;
 int pgd_none (int ) ;
 int * pgd_offset_k (unsigned long) ;
 int pgd_val (int ) ;
 int walk_pud (struct pg_state*,int *,unsigned long) ;

__attribute__((used)) static void walk_pagetables(struct pg_state *st)
{
 unsigned int i;
 unsigned long addr = st->start_address & PGDIR_MASK;
 pgd_t *pgd = pgd_offset_k(addr);





 for (i = pgd_index(addr); i < PTRS_PER_PGD; i++, pgd++, addr += PGDIR_SIZE) {
  if (!pgd_none(*pgd) && !pgd_is_leaf(*pgd))

   walk_pud(st, pgd, addr);
  else
   note_page(st, addr, 1, pgd_val(*pgd));
 }
}
