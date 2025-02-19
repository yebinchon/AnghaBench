
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pg_state {int current_address; } ;
typedef int pgprotval_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 int P4D_LEVEL_MULT ;
 int PTRS_PER_P4D ;
 int __p4d (int ) ;
 int __pgprot (int ) ;
 int effective_prot (int ,int ) ;
 int kasan_page_table (struct seq_file*,struct pg_state*,int *) ;
 int normalize_addr (unsigned long) ;
 int note_page (struct seq_file*,struct pg_state*,int ,int ,int) ;
 int p4d_flags (int ) ;
 scalar_t__ p4d_large (int ) ;
 int p4d_none (int ) ;
 int p4d_present (int ) ;
 scalar_t__ pgd_page_vaddr (int ) ;
 int pgd_val (int ) ;
 void walk_pud_level (struct seq_file*,struct pg_state*,int ,int ,unsigned long) ;

__attribute__((used)) static void walk_p4d_level(struct seq_file *m, struct pg_state *st, pgd_t addr,
      pgprotval_t eff_in, unsigned long P)
{
 int i;
 p4d_t *start, *p4d_start;
 pgprotval_t prot, eff;

 if (PTRS_PER_P4D == 1)
  return walk_pud_level(m, st, __p4d(pgd_val(addr)), eff_in, P);

 p4d_start = start = (p4d_t *)pgd_page_vaddr(addr);

 for (i = 0; i < PTRS_PER_P4D; i++) {
  st->current_address = normalize_addr(P + i * P4D_LEVEL_MULT);
  if (!p4d_none(*start)) {
   prot = p4d_flags(*start);
   eff = effective_prot(eff_in, prot);
   if (p4d_large(*start) || !p4d_present(*start)) {
    note_page(m, st, __pgprot(prot), eff, 2);
   } else if (!kasan_page_table(m, st, p4d_start)) {
    walk_pud_level(m, st, *start, eff,
            P + i * P4D_LEVEL_MULT);
   }
  } else
   note_page(m, st, __pgprot(0), 0, 2);

  start++;
 }
}
