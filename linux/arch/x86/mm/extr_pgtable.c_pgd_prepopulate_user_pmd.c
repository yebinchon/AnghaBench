
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pmd_t ;
typedef int pgd_t ;



__attribute__((used)) static void pgd_prepopulate_user_pmd(struct mm_struct *mm,
         pgd_t *k_pgd, pmd_t *pmds[])
{
}
