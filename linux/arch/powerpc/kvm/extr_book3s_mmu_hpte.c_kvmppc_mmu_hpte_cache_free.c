
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpte_cache {int dummy; } ;


 int hpte_cache ;
 int kmem_cache_free (int ,struct hpte_cache*) ;

void kvmppc_mmu_hpte_cache_free(struct hpte_cache *pte)
{
 kmem_cache_free(hpte_cache, pte);
}
