
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mmu_memory_cache {int nobjs; void** objects; } ;
struct kmem_cache {int dummy; } ;


 int ARRAY_SIZE (void**) ;
 int ENOMEM ;
 int GFP_KERNEL_ACCOUNT ;
 void* kmem_cache_zalloc (struct kmem_cache*,int ) ;

__attribute__((used)) static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *cache,
      struct kmem_cache *base_cache, int min)
{
 void *obj;

 if (cache->nobjs >= min)
  return 0;
 while (cache->nobjs < ARRAY_SIZE(cache->objects)) {
  obj = kmem_cache_zalloc(base_cache, GFP_KERNEL_ACCOUNT);
  if (!obj)
   return cache->nobjs >= min ? 0 : -ENOMEM;
  cache->objects[cache->nobjs++] = obj;
 }
 return 0;
}
