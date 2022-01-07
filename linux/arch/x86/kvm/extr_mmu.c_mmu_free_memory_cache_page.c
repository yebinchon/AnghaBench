
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mmu_memory_cache {int nobjs; scalar_t__* objects; } ;


 int free_page (unsigned long) ;

__attribute__((used)) static void mmu_free_memory_cache_page(struct kvm_mmu_memory_cache *mc)
{
 while (mc->nobjs)
  free_page((unsigned long)mc->objects[--mc->nobjs]);
}
