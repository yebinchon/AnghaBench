
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pte_list_desc {int dummy; } ;
struct TYPE_2__ {int mmu_pte_list_desc_cache; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 struct pte_list_desc* mmu_memory_cache_alloc (int *) ;

__attribute__((used)) static struct pte_list_desc *mmu_alloc_pte_list_desc(struct kvm_vcpu *vcpu)
{
 return mmu_memory_cache_alloc(&vcpu->arch.mmu_pte_list_desc_cache);
}
