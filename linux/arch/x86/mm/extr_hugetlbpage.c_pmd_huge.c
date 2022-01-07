
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 int _PAGE_PRESENT ;
 int _PAGE_PSE ;
 int pmd_none (int ) ;
 int pmd_val (int ) ;

int pmd_huge(pmd_t pmd)
{
 return !pmd_none(pmd) &&
  (pmd_val(pmd) & (_PAGE_PRESENT|_PAGE_PSE)) != _PAGE_PRESENT;
}
