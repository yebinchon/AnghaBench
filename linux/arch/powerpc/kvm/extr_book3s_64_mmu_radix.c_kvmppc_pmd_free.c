
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 int kmem_cache_free (int ,int *) ;
 int kvm_pmd_cache ;

__attribute__((used)) static void kvmppc_pmd_free(pmd_t *pmdp)
{
 kmem_cache_free(kvm_pmd_cache, pmdp);
}
