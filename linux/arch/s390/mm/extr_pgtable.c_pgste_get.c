
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pgste_t ;


 int PTRS_PER_PTE ;
 int __pgste (unsigned long) ;

__attribute__((used)) static inline pgste_t pgste_get(pte_t *ptep)
{
 unsigned long pgste = 0;



 return __pgste(pgste);
}
