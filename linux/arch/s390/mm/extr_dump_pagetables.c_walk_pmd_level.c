
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pg_state {unsigned long current_address; } ;
typedef int pud_t ;
typedef int pmd_t ;


 int PAGE_MASK ;
 scalar_t__ PMD_SIZE ;
 int PTRS_PER_PMD ;
 unsigned int _PAGE_INVALID ;
 unsigned int _SEGMENT_ENTRY_NOEXEC ;
 unsigned int _SEGMENT_ENTRY_PROTECT ;
 int __pa (int ) ;
 int kasan_early_shadow_pmd ;
 unsigned long max_addr ;
 int note_kasan_early_shadow_page (struct seq_file*,struct pg_state*) ;
 int note_page (struct seq_file*,struct pg_state*,unsigned int,int) ;
 scalar_t__ pmd_large (int ) ;
 int pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 unsigned int pmd_val (int ) ;
 int pud_val (int ) ;
 int walk_pte_level (struct seq_file*,struct pg_state*,int *,unsigned long) ;

__attribute__((used)) static void walk_pmd_level(struct seq_file *m, struct pg_state *st,
      pud_t *pud, unsigned long addr)
{
 unsigned int prot;
 pmd_t *pmd;
 int i;
 pmd = pmd_offset(pud, addr);
 for (i = 0; i < PTRS_PER_PMD && addr < max_addr; i++, pmd++) {
  st->current_address = addr;
  if (!pmd_none(*pmd)) {
   if (pmd_large(*pmd)) {
    prot = pmd_val(*pmd) &
     (_SEGMENT_ENTRY_PROTECT |
      _SEGMENT_ENTRY_NOEXEC);
    note_page(m, st, prot, 3);
   } else
    walk_pte_level(m, st, pmd, addr);
  } else
   note_page(m, st, _PAGE_INVALID, 3);
  addr += PMD_SIZE;
 }
}
