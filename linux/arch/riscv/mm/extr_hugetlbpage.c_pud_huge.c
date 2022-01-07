
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;


 int _PAGE_EXEC ;
 int _PAGE_READ ;
 int _PAGE_WRITE ;
 scalar_t__ pud_present (int ) ;
 int pud_val (int ) ;

int pud_huge(pud_t pud)
{
 return pud_present(pud) &&
  (pud_val(pud) & (_PAGE_READ | _PAGE_WRITE | _PAGE_EXEC));
}
