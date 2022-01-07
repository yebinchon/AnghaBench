
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pg_state {unsigned long current_address; } ;
typedef int st ;
typedef int pgd_t ;


 scalar_t__ PGDIR_SIZE ;
 int PTRS_PER_PGD ;
 int _PAGE_INVALID ;
 int cond_resched () ;
 unsigned long max_addr ;
 int memset (struct pg_state*,int ,int) ;
 int note_page (struct seq_file*,struct pg_state*,int ,int) ;
 int pgd_none (int ) ;
 int * pgd_offset_k (unsigned long) ;
 int walk_p4d_level (struct seq_file*,struct pg_state*,int *,unsigned long) ;

__attribute__((used)) static void walk_pgd_level(struct seq_file *m)
{
 unsigned long addr = 0;
 struct pg_state st;
 pgd_t *pgd;
 int i;

 memset(&st, 0, sizeof(st));
 for (i = 0; i < PTRS_PER_PGD && addr < max_addr; i++) {
  st.current_address = addr;
  pgd = pgd_offset_k(addr);
  if (!pgd_none(*pgd))
   walk_p4d_level(m, &st, pgd, addr);
  else
   note_page(m, &st, _PAGE_INVALID, 1);
  addr += PGDIR_SIZE;
  cond_resched();
 }

 st.current_address = max_addr;
 note_page(m, &st, 0, 0);
}
