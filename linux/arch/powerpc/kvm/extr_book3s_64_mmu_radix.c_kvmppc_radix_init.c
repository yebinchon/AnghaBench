
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int RADIX_PMD_INDEX_SIZE ;
 int RADIX_PTE_INDEX_SIZE ;
 void* kmem_cache_create (char*,unsigned long,unsigned long,int ,int ) ;
 int kmem_cache_destroy (void*) ;
 void* kvm_pmd_cache ;
 void* kvm_pte_cache ;
 int pmd_ctor ;
 int pte_ctor ;

int kvmppc_radix_init(void)
{
 unsigned long size = sizeof(void *) << RADIX_PTE_INDEX_SIZE;

 kvm_pte_cache = kmem_cache_create("kvm-pte", size, size, 0, pte_ctor);
 if (!kvm_pte_cache)
  return -ENOMEM;

 size = sizeof(void *) << RADIX_PMD_INDEX_SIZE;

 kvm_pmd_cache = kmem_cache_create("kvm-pmd", size, size, 0, pmd_ctor);
 if (!kvm_pmd_cache) {
  kmem_cache_destroy(kvm_pte_cache);
  return -ENOMEM;
 }

 return 0;
}
