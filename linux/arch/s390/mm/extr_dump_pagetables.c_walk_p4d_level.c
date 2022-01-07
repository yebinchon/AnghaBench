
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pg_state {unsigned long current_address; } ;
typedef int pgd_t ;
typedef int p4d_t ;


 scalar_t__ P4D_SIZE ;
 int PAGE_MASK ;
 int PTRS_PER_P4D ;
 int _PAGE_INVALID ;
 int __pa (int ) ;
 int kasan_early_shadow_p4d ;
 unsigned long max_addr ;
 int note_kasan_early_shadow_page (struct seq_file*,struct pg_state*) ;
 int note_page (struct seq_file*,struct pg_state*,int ,int) ;
 int p4d_none (int ) ;
 int * p4d_offset (int *,unsigned long) ;
 int pgd_val (int ) ;
 int walk_pud_level (struct seq_file*,struct pg_state*,int *,unsigned long) ;

__attribute__((used)) static void walk_p4d_level(struct seq_file *m, struct pg_state *st,
      pgd_t *pgd, unsigned long addr)
{
 p4d_t *p4d;
 int i;
 p4d = p4d_offset(pgd, addr);
 for (i = 0; i < PTRS_PER_P4D && addr < max_addr; i++, p4d++) {
  st->current_address = addr;
  if (!p4d_none(*p4d))
   walk_pud_level(m, st, p4d, addr);
  else
   note_page(m, st, _PAGE_INVALID, 2);
  addr += P4D_SIZE;
 }
}
