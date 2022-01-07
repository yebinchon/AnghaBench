
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef int pte_t ;
typedef int pgste_t ;


 int _PGSTE_GPS_NODAT ;
 scalar_t__ mm_has_pgste (struct mm_struct*) ;
 int pgste_set (int *,int ) ;
 int pgste_update_all (int ,int ,struct mm_struct*) ;
 int pgste_val (int ) ;
 int preempt_disable () ;
 int ptep_flush_lazy (struct mm_struct*,unsigned long,int *,int) ;
 int ptep_xchg_start (struct mm_struct*,unsigned long,int *) ;

pte_t ptep_modify_prot_start(struct vm_area_struct *vma, unsigned long addr,
        pte_t *ptep)
{
 pgste_t pgste;
 pte_t old;
 int nodat;
 struct mm_struct *mm = vma->vm_mm;

 preempt_disable();
 pgste = ptep_xchg_start(mm, addr, ptep);
 nodat = !!(pgste_val(pgste) & _PGSTE_GPS_NODAT);
 old = ptep_flush_lazy(mm, addr, ptep, nodat);
 if (mm_has_pgste(mm)) {
  pgste = pgste_update_all(old, pgste, mm);
  pgste_set(ptep, pgste);
 }
 return old;
}
