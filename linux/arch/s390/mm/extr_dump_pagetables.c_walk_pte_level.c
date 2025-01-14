
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pg_state {unsigned long current_address; } ;
typedef int pte_t ;
typedef int pmd_t ;


 scalar_t__ PAGE_SIZE ;
 int PTRS_PER_PTE ;
 unsigned int _PAGE_INVALID ;
 unsigned int _PAGE_NOEXEC ;
 unsigned int _PAGE_PROTECT ;
 unsigned long max_addr ;
 int note_page (struct seq_file*,struct pg_state*,unsigned int,int) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 unsigned int pte_val (int ) ;

__attribute__((used)) static void walk_pte_level(struct seq_file *m, struct pg_state *st,
      pmd_t *pmd, unsigned long addr)
{
 unsigned int prot;
 pte_t *pte;
 int i;

 for (i = 0; i < PTRS_PER_PTE && addr < max_addr; i++) {
  st->current_address = addr;
  pte = pte_offset_kernel(pmd, addr);
  prot = pte_val(*pte) &
   (_PAGE_PROTECT | _PAGE_INVALID | _PAGE_NOEXEC);
  note_page(m, st, prot, 4);
  addr += PAGE_SIZE;
 }
}
