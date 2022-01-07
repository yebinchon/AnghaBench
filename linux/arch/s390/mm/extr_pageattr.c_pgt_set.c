
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
struct TYPE_2__ {int kernel_asce; } ;





 scalar_t__ MACHINE_HAS_EDAT2 ;
 scalar_t__ MACHINE_HAS_IDTE ;
 int PTRS_PER_PMD ;
 int PTRS_PER_PTE ;
 int PTRS_PER_PUD ;
 TYPE_1__ S390_lowcore ;
 int crdte (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,int ) ;
 int csp (unsigned int*,unsigned long,unsigned long) ;
 int cspg (unsigned long*,unsigned long,unsigned long) ;

__attribute__((used)) static void pgt_set(unsigned long *old, unsigned long new, unsigned long addr,
      unsigned long dtt)
{
 unsigned long table, mask;

 mask = 0;
 if (MACHINE_HAS_EDAT2) {
  switch (dtt) {
  case 129:
   mask = ~(PTRS_PER_PUD * sizeof(pud_t) - 1);
   break;
  case 128:
   mask = ~(PTRS_PER_PMD * sizeof(pmd_t) - 1);
   break;
  case 130:
   mask = ~(PTRS_PER_PTE * sizeof(pte_t) - 1);
   break;
  }
  table = (unsigned long)old & mask;
  crdte(*old, new, table, dtt, addr, S390_lowcore.kernel_asce);
 } else if (MACHINE_HAS_IDTE) {
  cspg(old, *old, new);
 } else {
  csp((unsigned int *)old + 1, *old, new);
 }
}
