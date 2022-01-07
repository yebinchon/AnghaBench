
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_state {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;


 unsigned int PAGE_SIZE ;
 unsigned int PTRS_PER_PTE ;
 int note_page (struct pg_state*,unsigned long,int,int ) ;
 int * pte_offset_kernel (int *,int ) ;
 int pte_val (int ) ;

__attribute__((used)) static void walk_pte(struct pg_state *st, pmd_t *pmd, unsigned long start)
{
 pte_t *pte = pte_offset_kernel(pmd, 0);
 unsigned long addr;
 unsigned int i;

 for (i = 0; i < PTRS_PER_PTE; i++, pte++) {
  addr = start + i * PAGE_SIZE;
  note_page(st, addr, 4, pte_val(*pte));

 }
}
