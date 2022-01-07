
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 int pmd_large (int ) ;

int pmd_huge(pmd_t pmd)
{
 return pmd_large(pmd);
}
