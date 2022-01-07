
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mmu_memory_cache {int nobjs; int * objects; } ;
struct kmem_cache {int dummy; } ;


 int kmem_cache_free (struct kmem_cache*,int ) ;

__attribute__((used)) static void mmu_free_memory_cache(struct kvm_mmu_memory_cache *mc,
      struct kmem_cache *cache)
{
 while (mc->nobjs)
  kmem_cache_free(cache, mc->objects[--mc->nobjs]);
}
