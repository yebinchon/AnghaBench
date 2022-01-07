
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pud_t ;


 int preempt_disable () ;
 int preempt_enable () ;
 int pudp_flush_direct (struct mm_struct*,unsigned long,int *) ;

pud_t pudp_xchg_direct(struct mm_struct *mm, unsigned long addr,
         pud_t *pudp, pud_t new)
{
 pud_t old;

 preempt_disable();
 old = pudp_flush_direct(mm, addr, pudp);
 *pudp = new;
 preempt_enable();
 return old;
}
