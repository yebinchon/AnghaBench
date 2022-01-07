
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int kmem_cache_free (int ,int *) ;
 int kvm_pte_cache ;

__attribute__((used)) static void kvmppc_pte_free(pte_t *ptep)
{
 kmem_cache_free(kvm_pte_cache, ptep);
}
