
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;
typedef int pgste_t ;


 unsigned long PAGE_MASK ;
 int PGSTE_ACC_BITS ;
 int PGSTE_FP_BIT ;
 int PGSTE_GC_BIT ;
 int PGSTE_GR_BIT ;
 int VM_BUG_ON (int) ;
 unsigned long _PAGE_INVALID ;
 int mm_uses_skeys (struct mm_struct*) ;
 int page_set_storage_key (unsigned long,unsigned long,int ) ;
 int pgste_val (int ) ;
 unsigned long pte_val (int ) ;

__attribute__((used)) static inline void pgste_set_key(pte_t *ptep, pgste_t pgste, pte_t entry,
     struct mm_struct *mm)
{
}
