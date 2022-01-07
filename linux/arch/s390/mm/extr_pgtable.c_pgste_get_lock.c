
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pgste_t ;


 int __pgste (unsigned long) ;

__attribute__((used)) static inline pgste_t pgste_get_lock(pte_t *ptep)
{
 unsigned long new = 0;
 return __pgste(new);
}
