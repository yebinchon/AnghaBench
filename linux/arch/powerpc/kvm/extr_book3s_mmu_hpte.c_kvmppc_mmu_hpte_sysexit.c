
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hpte_cache ;
 int kmem_cache_destroy (int ) ;

void kvmppc_mmu_hpte_sysexit(void)
{
 kmem_cache_destroy(hpte_cache);
}
