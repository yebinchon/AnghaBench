
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 int GFP_KERNEL ;
 int * kmem_cache_alloc (int ,int ) ;
 int kvm_pmd_cache ;

__attribute__((used)) static pmd_t *kvmppc_pmd_alloc(void)
{
 return kmem_cache_alloc(kvm_pmd_cache, GFP_KERNEL);
}
