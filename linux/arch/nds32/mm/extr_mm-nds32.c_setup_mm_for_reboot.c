
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pmd_t ;
typedef int pgd_t ;
struct TYPE_6__ {TYPE_1__* mm; } ;
struct TYPE_5__ {int * pgd; } ;
struct TYPE_4__ {int * pgd; } ;


 int PGDIR_SHIFT ;
 int USER_PTRS_PER_PGD ;
 int __pmd (unsigned long) ;
 TYPE_3__* current ;
 TYPE_2__ init_mm ;
 int * pmd_offset (int *,int) ;
 int set_pmd (int *,int ) ;

void setup_mm_for_reboot(char mode)
{
 unsigned long pmdval;
 pgd_t *pgd;
 pmd_t *pmd;
 int i;

 if (current->mm && current->mm->pgd)
  pgd = current->mm->pgd;
 else
  pgd = init_mm.pgd;

 for (i = 0; i < USER_PTRS_PER_PGD; i++) {
  pmdval = (i << PGDIR_SHIFT);
  pmd = pmd_offset(pgd + i, i << PGDIR_SHIFT);
  set_pmd(pmd, __pmd(pmdval));
 }
}
