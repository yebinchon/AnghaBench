
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_state {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;


 scalar_t__ PAGE_SIZE ;
 int READ_ONCE (int ) ;
 int note_page (struct pg_state*,unsigned long,int,int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 int pte_val (int ) ;

__attribute__((used)) static void walk_pte(struct pg_state *st, pmd_t *pmdp, unsigned long start,
       unsigned long end)
{
 unsigned long addr = start;
 pte_t *ptep = pte_offset_kernel(pmdp, start);

 do {
  note_page(st, addr, 4, READ_ONCE(pte_val(*ptep)));
 } while (ptep++, addr += PAGE_SIZE, addr != end);
}
