
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 int PMD_TABLE_BIT ;
 int pmd_val (int ) ;

int pmd_huge(pmd_t pmd)
{
 return pmd_val(pmd) && !(pmd_val(pmd) & PMD_TABLE_BIT);
}
