
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pgd_t ;
typedef int gfp_t ;


 int GFP_PGTABLE_USER ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ PGD_SIZE ;
 scalar_t__ __get_free_page (int ) ;
 int * kmem_cache_alloc (int ,int ) ;
 int pgd_cache ;

pgd_t *pgd_alloc(struct mm_struct *mm)
{
 gfp_t gfp = GFP_PGTABLE_USER;

 if (PGD_SIZE == PAGE_SIZE)
  return (pgd_t *)__get_free_page(gfp);
 else
  return kmem_cache_alloc(pgd_cache, gfp);
}
