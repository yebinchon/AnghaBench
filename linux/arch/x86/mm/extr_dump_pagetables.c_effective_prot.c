
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprotval_t ;


 int _PAGE_NX ;
 int _PAGE_RW ;
 int _PAGE_USER ;

__attribute__((used)) static inline pgprotval_t effective_prot(pgprotval_t prot1, pgprotval_t prot2)
{
 return (prot1 & prot2 & (_PAGE_USER | _PAGE_RW)) |
        ((prot1 | prot2) & _PAGE_NX);
}
