
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mmu_memory_cache {int nobjs; void** objects; } ;


 int ARRAY_SIZE (void**) ;
 int ENOMEM ;
 int GFP_KERNEL_ACCOUNT ;
 scalar_t__ __get_free_page (int ) ;

__attribute__((used)) static int mmu_topup_memory_cache_page(struct kvm_mmu_memory_cache *cache,
           int min)
{
 void *page;

 if (cache->nobjs >= min)
  return 0;
 while (cache->nobjs < ARRAY_SIZE(cache->objects)) {
  page = (void *)__get_free_page(GFP_KERNEL_ACCOUNT);
  if (!page)
   return cache->nobjs >= min ? 0 : -ENOMEM;
  cache->objects[cache->nobjs++] = page;
 }
 return 0;
}
