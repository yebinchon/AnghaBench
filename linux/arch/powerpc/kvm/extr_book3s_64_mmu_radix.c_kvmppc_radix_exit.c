
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int kvm_pmd_cache ;
 int kvm_pte_cache ;

void kvmppc_radix_exit(void)
{
 kmem_cache_destroy(kvm_pte_cache);
 kmem_cache_destroy(kvm_pmd_cache);
}
