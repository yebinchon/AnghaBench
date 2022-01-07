
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pmd_t ;


 int flush_tlb_all () ;

void set_pmd_at(struct mm_struct *mm, unsigned long addr,
  pmd_t *pmdp, pmd_t pmd)
{
 *pmdp = pmd;
 flush_tlb_all();
}
