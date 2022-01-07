
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pgste_t ;


 int MACHINE_HAS_ESOP ;
 int PGSTE_UC_BIT ;
 int _PAGE_DIRTY ;
 int _PAGE_INVALID ;
 int _PAGE_PRESENT ;
 int _PAGE_PROTECT ;
 int _PAGE_WRITE ;
 int pgste_val (int ) ;
 int pte_val (int ) ;

__attribute__((used)) static inline pgste_t pgste_set_pte(pte_t *ptep, pgste_t pgste, pte_t entry)
{
 *ptep = entry;
 return pgste;
}
