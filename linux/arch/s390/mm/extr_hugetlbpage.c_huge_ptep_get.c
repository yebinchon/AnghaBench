
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int __rste_to_pte (int ) ;
 int pte_val (int ) ;

pte_t huge_ptep_get(pte_t *ptep)
{
 return __rste_to_pte(pte_val(*ptep));
}
