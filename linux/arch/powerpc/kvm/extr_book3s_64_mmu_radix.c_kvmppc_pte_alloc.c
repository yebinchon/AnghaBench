
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int GFP_KERNEL ;
 int * kmem_cache_alloc (int ,int ) ;
 int kvm_pte_cache ;

__attribute__((used)) static pte_t *kvmppc_pte_alloc(void)
{
 return kmem_cache_alloc(kvm_pte_cache, GFP_KERNEL);
}
