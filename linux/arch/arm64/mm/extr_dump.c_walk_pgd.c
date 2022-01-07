
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_state {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pgd_t ;


 int BUG_ON (int ) ;
 int READ_ONCE (int ) ;
 unsigned long TASK_SIZE_64 ;
 int note_page (struct pg_state*,unsigned long,int,int ) ;
 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 int pgd_bad (int ) ;
 scalar_t__ pgd_none (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int pgd_val (int ) ;
 int walk_pud (struct pg_state*,int *,unsigned long,unsigned long) ;

__attribute__((used)) static void walk_pgd(struct pg_state *st, struct mm_struct *mm,
       unsigned long start)
{
 unsigned long end = (start < TASK_SIZE_64) ? TASK_SIZE_64 : 0;
 unsigned long next, addr = start;
 pgd_t *pgdp = pgd_offset(mm, start);

 do {
  pgd_t pgd = READ_ONCE(*pgdp);
  next = pgd_addr_end(addr, end);

  if (pgd_none(pgd)) {
   note_page(st, addr, 1, pgd_val(pgd));
  } else {
   BUG_ON(pgd_bad(pgd));
   walk_pud(st, pgdp, addr, next);
  }
 } while (pgdp++, addr = next, addr != end);
}
