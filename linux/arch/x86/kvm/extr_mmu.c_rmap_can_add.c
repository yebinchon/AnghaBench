
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_mmu_memory_cache {int dummy; } ;
struct TYPE_2__ {struct kvm_mmu_memory_cache mmu_pte_list_desc_cache; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int mmu_memory_cache_free_objects (struct kvm_mmu_memory_cache*) ;

__attribute__((used)) static bool rmap_can_add(struct kvm_vcpu *vcpu)
{
 struct kvm_mmu_memory_cache *cache;

 cache = &vcpu->arch.mmu_pte_list_desc_cache;
 return mmu_memory_cache_free_objects(cache);
}
