
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;
typedef int pgste_t ;


 unsigned long PGSTE_IN_BIT ;
 unsigned long PGSTE_VSIE_BIT ;
 unsigned long pgste_val (int ) ;
 int ptep_notify (struct mm_struct*,unsigned long,int *,unsigned long) ;

__attribute__((used)) static inline pgste_t pgste_pte_notify(struct mm_struct *mm,
           unsigned long addr,
           pte_t *ptep, pgste_t pgste)
{
 return pgste;
}
