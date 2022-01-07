
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;


 int _PAGE_USER ;
 int pgprot_val (int ) ;

__attribute__((used)) static inline bool pmb_prot_valid(pgprot_t prot)
{
 return (pgprot_val(prot) & _PAGE_USER) == 0;
}
