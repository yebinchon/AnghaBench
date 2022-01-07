
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union kvm_mmu_role {int dummy; } kvm_mmu_role ;
typedef union kvm_mmu_page_role {int dummy; } kvm_mmu_page_role ;
typedef union kvm_mmu_extended_role {int dummy; } kvm_mmu_extended_role ;
typedef int u64 ;
typedef int u32 ;
struct pte_list_desc {int dummy; } ;
struct kvm_mmu_page {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SLAB_ACCOUNT ;
 int __set_nx_huge_pages (int ) ;
 int get_nx_auto_mode () ;
 void* kmem_cache_create (char*,int,int ,int ,int *) ;
 int kvm_mmu_reset_all_pte_masks () ;
 int kvm_set_mmio_spte_mask () ;
 int kvm_total_used_mmu_pages ;
 int mmu_destroy_caches () ;
 void* mmu_page_header_cache ;
 int mmu_shrinker ;
 int nx_huge_pages ;
 scalar_t__ percpu_counter_init (int *,int ,int ) ;
 void* pte_list_desc_cache ;
 int register_shrinker (int *) ;

int kvm_mmu_module_init(void)
{
 int ret = -ENOMEM;

 if (nx_huge_pages == -1)
  __set_nx_huge_pages(get_nx_auto_mode());







 BUILD_BUG_ON(sizeof(union kvm_mmu_page_role) != sizeof(u32));
 BUILD_BUG_ON(sizeof(union kvm_mmu_extended_role) != sizeof(u32));
 BUILD_BUG_ON(sizeof(union kvm_mmu_role) != sizeof(u64));

 kvm_mmu_reset_all_pte_masks();

 kvm_set_mmio_spte_mask();

 pte_list_desc_cache = kmem_cache_create("pte_list_desc",
         sizeof(struct pte_list_desc),
         0, SLAB_ACCOUNT, ((void*)0));
 if (!pte_list_desc_cache)
  goto out;

 mmu_page_header_cache = kmem_cache_create("kvm_mmu_page_header",
        sizeof(struct kvm_mmu_page),
        0, SLAB_ACCOUNT, ((void*)0));
 if (!mmu_page_header_cache)
  goto out;

 if (percpu_counter_init(&kvm_total_used_mmu_pages, 0, GFP_KERNEL))
  goto out;

 ret = register_shrinker(&mmu_shrinker);
 if (ret)
  goto out;

 return 0;

out:
 mmu_destroy_caches();
 return ret;
}
