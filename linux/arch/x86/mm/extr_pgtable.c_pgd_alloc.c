
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int * pgd; } ;
typedef int pmd_t ;
typedef int pgd_t ;


 int MAX_PREALLOCATED_PMDS ;
 int MAX_PREALLOCATED_USER_PMDS ;
 int PREALLOCATED_PMDS ;
 int PREALLOCATED_USER_PMDS ;
 int * _pgd_alloc () ;
 int _pgd_free (int *) ;
 int free_pmds (struct mm_struct*,int **,int ) ;
 scalar_t__ paravirt_pgd_alloc (struct mm_struct*) ;
 int pgd_ctor (struct mm_struct*,int *) ;
 int pgd_lock ;
 int pgd_prepopulate_pmd (struct mm_struct*,int *,int **) ;
 int pgd_prepopulate_user_pmd (struct mm_struct*,int *,int **) ;
 scalar_t__ preallocate_pmds (struct mm_struct*,int **,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

pgd_t *pgd_alloc(struct mm_struct *mm)
{
 pgd_t *pgd;
 pmd_t *u_pmds[MAX_PREALLOCATED_USER_PMDS];
 pmd_t *pmds[MAX_PREALLOCATED_PMDS];

 pgd = _pgd_alloc();

 if (pgd == ((void*)0))
  goto out;

 mm->pgd = pgd;

 if (preallocate_pmds(mm, pmds, PREALLOCATED_PMDS) != 0)
  goto out_free_pgd;

 if (preallocate_pmds(mm, u_pmds, PREALLOCATED_USER_PMDS) != 0)
  goto out_free_pmds;

 if (paravirt_pgd_alloc(mm) != 0)
  goto out_free_user_pmds;






 spin_lock(&pgd_lock);

 pgd_ctor(mm, pgd);
 pgd_prepopulate_pmd(mm, pgd, pmds);
 pgd_prepopulate_user_pmd(mm, pgd, u_pmds);

 spin_unlock(&pgd_lock);

 return pgd;

out_free_user_pmds:
 free_pmds(mm, u_pmds, PREALLOCATED_USER_PMDS);
out_free_pmds:
 free_pmds(mm, pmds, PREALLOCATED_PMDS);
out_free_pgd:
 _pgd_free(pgd);
out:
 return ((void*)0);
}
