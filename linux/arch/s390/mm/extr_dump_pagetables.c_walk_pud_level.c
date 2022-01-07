
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pg_state {unsigned long current_address; } ;
typedef int pud_t ;
typedef int p4d_t ;


 int PAGE_MASK ;
 int PTRS_PER_PUD ;
 scalar_t__ PUD_SIZE ;
 unsigned int _PAGE_INVALID ;
 unsigned int _REGION_ENTRY_NOEXEC ;
 unsigned int _REGION_ENTRY_PROTECT ;
 int __pa (int ) ;
 int kasan_early_shadow_pud ;
 unsigned long max_addr ;
 int note_kasan_early_shadow_page (struct seq_file*,struct pg_state*) ;
 int note_page (struct seq_file*,struct pg_state*,unsigned int,int) ;
 int p4d_val (int ) ;
 scalar_t__ pud_large (int ) ;
 int pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 unsigned int pud_val (int ) ;
 int walk_pmd_level (struct seq_file*,struct pg_state*,int *,unsigned long) ;

__attribute__((used)) static void walk_pud_level(struct seq_file *m, struct pg_state *st,
      p4d_t *p4d, unsigned long addr)
{
 unsigned int prot;
 pud_t *pud;
 int i;
 pud = pud_offset(p4d, addr);
 for (i = 0; i < PTRS_PER_PUD && addr < max_addr; i++, pud++) {
  st->current_address = addr;
  if (!pud_none(*pud))
   if (pud_large(*pud)) {
    prot = pud_val(*pud) &
     (_REGION_ENTRY_PROTECT |
      _REGION_ENTRY_NOEXEC);
    note_page(m, st, prot, 2);
   } else
    walk_pmd_level(m, st, pud, addr);
  else
   note_page(m, st, _PAGE_INVALID, 2);
  addr += PUD_SIZE;
 }
}
