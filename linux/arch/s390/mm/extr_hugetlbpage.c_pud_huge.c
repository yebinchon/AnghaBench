
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;


 int pud_large (int ) ;

int pud_huge(pud_t pud)
{
 return pud_large(pud);
}
