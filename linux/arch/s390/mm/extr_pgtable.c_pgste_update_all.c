
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;
typedef int pgste_t ;


 unsigned long PAGE_MASK ;
 unsigned long PGSTE_ACC_BITS ;
 unsigned long PGSTE_FP_BIT ;
 unsigned long _PAGE_ACC_BITS ;
 unsigned long _PAGE_CHANGED ;
 unsigned long _PAGE_FP_BIT ;
 unsigned long _PAGE_INVALID ;
 unsigned long _PAGE_REFERENCED ;
 int mm_uses_skeys (struct mm_struct*) ;
 scalar_t__ page_get_storage_key (unsigned long) ;
 unsigned long pgste_val (int ) ;
 unsigned long pte_val (int ) ;

__attribute__((used)) static inline pgste_t pgste_update_all(pte_t pte, pgste_t pgste,
           struct mm_struct *mm)
{
 return pgste;

}
