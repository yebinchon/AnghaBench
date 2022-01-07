
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mmu_memory_cache {int nobjs; void** objects; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KVM_NR_MEM_OBJS ;
 scalar_t__ __get_free_page (int ) ;

__attribute__((used)) static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *cache,
      int min, int max)
{
 void *page;

 BUG_ON(max > KVM_NR_MEM_OBJS);
 if (cache->nobjs >= min)
  return 0;
 while (cache->nobjs < max) {
  page = (void *)__get_free_page(GFP_KERNEL);
  if (!page)
   return -ENOMEM;
  cache->objects[cache->nobjs++] = page;
 }
 return 0;
}
