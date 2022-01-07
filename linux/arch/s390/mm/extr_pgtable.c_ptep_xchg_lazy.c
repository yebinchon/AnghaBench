
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;
typedef int pgste_t ;


 int _PGSTE_GPS_NODAT ;
 int pgste_val (int ) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int ptep_flush_lazy (struct mm_struct*,unsigned long,int *,int) ;
 int ptep_xchg_commit (struct mm_struct*,unsigned long,int *,int ,int ,int ) ;
 int ptep_xchg_start (struct mm_struct*,unsigned long,int *) ;

pte_t ptep_xchg_lazy(struct mm_struct *mm, unsigned long addr,
       pte_t *ptep, pte_t new)
{
 pgste_t pgste;
 pte_t old;
 int nodat;

 preempt_disable();
 pgste = ptep_xchg_start(mm, addr, ptep);
 nodat = !!(pgste_val(pgste) & _PGSTE_GPS_NODAT);
 old = ptep_flush_lazy(mm, addr, ptep, nodat);
 old = ptep_xchg_commit(mm, addr, ptep, pgste, old, new);
 preempt_enable();
 return old;
}
