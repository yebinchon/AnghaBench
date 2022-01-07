
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pgd_t ;


 int kmem_cache_free (int ,int *) ;
 int pgd_cachep ;

void pgd_free(struct mm_struct *mm, pgd_t *pgd)
{
 kmem_cache_free(pgd_cachep, pgd);
}
