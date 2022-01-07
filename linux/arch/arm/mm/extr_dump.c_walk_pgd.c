
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_state {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pgd_t ;


 unsigned int PGDIR_SIZE ;
 unsigned int PTRS_PER_PGD ;
 int note_page (struct pg_state*,unsigned long,int,int ,int *) ;
 int pgd_none (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int pgd_val (int ) ;
 int walk_pud (struct pg_state*,int *,unsigned long) ;

__attribute__((used)) static void walk_pgd(struct pg_state *st, struct mm_struct *mm,
   unsigned long start)
{
 pgd_t *pgd = pgd_offset(mm, 0UL);
 unsigned i;
 unsigned long addr;

 for (i = 0; i < PTRS_PER_PGD; i++, pgd++) {
  addr = start + i * PGDIR_SIZE;
  if (!pgd_none(*pgd)) {
   walk_pud(st, pgd, addr);
  } else {
   note_page(st, addr, 1, pgd_val(*pgd), ((void*)0));
  }
 }
}
