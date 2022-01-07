
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pgd_t ;


 int PGALLOC_GFP ;
 int * kmem_cache_alloc (int ,int ) ;
 int pgd_cachep ;

pgd_t *pgd_alloc(struct mm_struct *mm)
{
 return kmem_cache_alloc(pgd_cachep, PGALLOC_GFP);
}
