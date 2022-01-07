
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pg_state {int current_address; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgprotval_t ;


 int PTE_LEVEL_MULT ;
 int PTRS_PER_PTE ;
 int __pgprot (int ) ;
 int effective_prot (int ,int ) ;
 int normalize_addr (unsigned long) ;
 int note_page (struct seq_file*,struct pg_state*,int ,int ,int) ;
 int pte_flags (int ) ;
 int * pte_offset_map (int *,int ) ;
 int pte_unmap (int *) ;

__attribute__((used)) static void walk_pte_level(struct seq_file *m, struct pg_state *st, pmd_t addr,
      pgprotval_t eff_in, unsigned long P)
{
 int i;
 pte_t *pte;
 pgprotval_t prot, eff;

 for (i = 0; i < PTRS_PER_PTE; i++) {
  st->current_address = normalize_addr(P + i * PTE_LEVEL_MULT);
  pte = pte_offset_map(&addr, st->current_address);
  prot = pte_flags(*pte);
  eff = effective_prot(eff_in, prot);
  note_page(m, st, __pgprot(prot), eff, 5);
  pte_unmap(pte);
 }
}
