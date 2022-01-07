
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pgd_t ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ PGD_SIZE ;
 int free_page (unsigned long) ;
 int kmem_cache_free (int ,int *) ;
 int pgd_cache ;

void pgd_free(struct mm_struct *mm, pgd_t *pgd)
{
 if (PGD_SIZE == PAGE_SIZE)
  free_page((unsigned long)pgd);
 else
  kmem_cache_free(pgd_cache, pgd);
}
