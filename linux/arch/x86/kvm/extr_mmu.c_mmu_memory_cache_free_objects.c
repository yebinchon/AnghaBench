
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mmu_memory_cache {int nobjs; } ;



__attribute__((used)) static int mmu_memory_cache_free_objects(struct kvm_mmu_memory_cache *cache)
{
 return cache->nobjs;
}
