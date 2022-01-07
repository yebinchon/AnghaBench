
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pgd_t ;


 int KERNEL_PGD_BOUNDARY ;
 int PREALLOCATED_PMDS ;
 int PREALLOCATED_USER_PMDS ;
 int X86_FEATURE_PTI ;
 int boot_cpu_has (int ) ;
 int * kernel_to_user_pgdp (int *) ;
 int mop_up_one_pmd (struct mm_struct*,int *) ;

__attribute__((used)) static void pgd_mop_up_pmds(struct mm_struct *mm, pgd_t *pgdp)
{
 int i;

 for (i = 0; i < PREALLOCATED_PMDS; i++)
  mop_up_one_pmd(mm, &pgdp[i]);
}
