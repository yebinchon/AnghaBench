
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int mmu_page_header_cache ;
 int pte_list_desc_cache ;

__attribute__((used)) static void mmu_destroy_caches(void)
{
 kmem_cache_destroy(pte_list_desc_cache);
 kmem_cache_destroy(mmu_page_header_cache);
}
