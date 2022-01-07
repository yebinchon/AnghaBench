
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 int USER_PTRS_PER_PGD ;
 scalar_t__ invalid_pte_table ;

__attribute__((used)) static void pgd_init(pgd_t *pgd)
{
 unsigned long *p = (unsigned long *) pgd;
 int i;

 for (i = 0; i < USER_PTRS_PER_PGD; i += 8) {
  p[i + 0] = (unsigned long) invalid_pte_table;
  p[i + 1] = (unsigned long) invalid_pte_table;
  p[i + 2] = (unsigned long) invalid_pte_table;
  p[i + 3] = (unsigned long) invalid_pte_table;
  p[i + 4] = (unsigned long) invalid_pte_table;
  p[i + 5] = (unsigned long) invalid_pte_table;
  p[i + 6] = (unsigned long) invalid_pte_table;
  p[i + 7] = (unsigned long) invalid_pte_table;
 }
}
