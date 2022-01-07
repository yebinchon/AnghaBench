
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;
typedef int pgste_t ;


 int __pgste (int ) ;
 scalar_t__ mm_has_pgste (struct mm_struct*) ;
 int pgste_get_lock (int *) ;
 int pgste_pte_notify (struct mm_struct*,unsigned long,int *,int ) ;

__attribute__((used)) static inline pgste_t ptep_xchg_start(struct mm_struct *mm,
          unsigned long addr, pte_t *ptep)
{
 pgste_t pgste = __pgste(0);

 if (mm_has_pgste(mm)) {
  pgste = pgste_get_lock(ptep);
  pgste = pgste_pte_notify(mm, addr, ptep, pgste);
 }
 return pgste;
}
