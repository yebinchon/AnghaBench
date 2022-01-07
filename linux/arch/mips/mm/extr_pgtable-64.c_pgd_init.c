
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTRS_PER_PGD ;
 scalar_t__ invalid_pmd_table ;
 scalar_t__ invalid_pte_table ;
 scalar_t__ invalid_pud_table ;

void pgd_init(unsigned long page)
{
 unsigned long *p, *end;
 unsigned long entry;


 entry = (unsigned long)invalid_pud_table;






 p = (unsigned long *) page;
 end = p + PTRS_PER_PGD;

 do {
  p[0] = entry;
  p[1] = entry;
  p[2] = entry;
  p[3] = entry;
  p[4] = entry;
  p += 8;
  p[-3] = entry;
  p[-2] = entry;
  p[-1] = entry;
 } while (p != end);
}
