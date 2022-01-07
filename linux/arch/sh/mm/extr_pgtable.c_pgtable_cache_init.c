
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int PTE_MAGNITUDE ;
 int PTRS_PER_PGD ;
 int PTRS_PER_PMD ;
 int SLAB_PANIC ;
 void* kmem_cache_create (char*,int,int ,int ,int *) ;
 void* pgd_cachep ;
 int * pgd_ctor ;
 void* pmd_cachep ;

void pgtable_cache_init(void)
{
 pgd_cachep = kmem_cache_create("pgd_cache",
           PTRS_PER_PGD * (1<<PTE_MAGNITUDE),
           PAGE_SIZE, SLAB_PANIC, pgd_ctor);





}
