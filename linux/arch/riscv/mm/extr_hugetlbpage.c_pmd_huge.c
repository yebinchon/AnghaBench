
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 int _PAGE_EXEC ;
 int _PAGE_READ ;
 int _PAGE_WRITE ;
 scalar_t__ pmd_present (int ) ;
 int pmd_val (int ) ;

int pmd_huge(pmd_t pmd)
{
 return pmd_present(pmd) &&
  (pmd_val(pmd) & (_PAGE_READ | _PAGE_WRITE | _PAGE_EXEC));
}
