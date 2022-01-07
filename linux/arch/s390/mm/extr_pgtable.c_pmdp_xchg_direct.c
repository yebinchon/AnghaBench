
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pmd_t ;


 int pmdp_flush_direct (struct mm_struct*,unsigned long,int *) ;
 int preempt_disable () ;
 int preempt_enable () ;

pmd_t pmdp_xchg_direct(struct mm_struct *mm, unsigned long addr,
         pmd_t *pmdp, pmd_t new)
{
 pmd_t old;

 preempt_disable();
 old = pmdp_flush_direct(mm, addr, pmdp);
 *pmdp = new;
 preempt_enable();
 return old;
}
