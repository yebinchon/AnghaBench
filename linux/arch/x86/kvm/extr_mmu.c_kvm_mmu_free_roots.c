
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong ;
struct kvm_vcpu {TYPE_2__* kvm; } ;
struct kvm_mmu {scalar_t__ root_hpa; scalar_t__ shadow_root_level; scalar_t__ root_level; scalar_t__* pae_root; scalar_t__ root_cr3; scalar_t__ direct_map; TYPE_1__* prev_roots; } ;
struct TYPE_5__ {int mmu_lock; } ;
struct TYPE_4__ {scalar_t__ hpa; } ;


 int BITS_PER_LONG ;
 int BUILD_BUG_ON (int) ;
 scalar_t__ INVALID_PAGE ;
 int KVM_MMU_NUM_PREV_ROOTS ;
 int KVM_MMU_ROOT_CURRENT ;
 int KVM_MMU_ROOT_PREVIOUS (int) ;
 int LIST_HEAD (int ) ;
 scalar_t__ PT64_ROOT_4LEVEL ;
 scalar_t__ VALID_PAGE (scalar_t__) ;
 int invalid_list ;
 int kvm_mmu_commit_zap_page (TYPE_2__*,int *) ;
 int mmu_free_root_page (TYPE_2__*,scalar_t__*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void kvm_mmu_free_roots(struct kvm_vcpu *vcpu, struct kvm_mmu *mmu,
   ulong roots_to_free)
{
 int i;
 LIST_HEAD(invalid_list);
 bool free_active_root = roots_to_free & KVM_MMU_ROOT_CURRENT;

 BUILD_BUG_ON(KVM_MMU_NUM_PREV_ROOTS >= BITS_PER_LONG);


 if (!(free_active_root && VALID_PAGE(mmu->root_hpa))) {
  for (i = 0; i < KVM_MMU_NUM_PREV_ROOTS; i++)
   if ((roots_to_free & KVM_MMU_ROOT_PREVIOUS(i)) &&
       VALID_PAGE(mmu->prev_roots[i].hpa))
    break;

  if (i == KVM_MMU_NUM_PREV_ROOTS)
   return;
 }

 spin_lock(&vcpu->kvm->mmu_lock);

 for (i = 0; i < KVM_MMU_NUM_PREV_ROOTS; i++)
  if (roots_to_free & KVM_MMU_ROOT_PREVIOUS(i))
   mmu_free_root_page(vcpu->kvm, &mmu->prev_roots[i].hpa,
        &invalid_list);

 if (free_active_root) {
  if (mmu->shadow_root_level >= PT64_ROOT_4LEVEL &&
      (mmu->root_level >= PT64_ROOT_4LEVEL || mmu->direct_map)) {
   mmu_free_root_page(vcpu->kvm, &mmu->root_hpa,
        &invalid_list);
  } else {
   for (i = 0; i < 4; ++i)
    if (mmu->pae_root[i] != 0)
     mmu_free_root_page(vcpu->kvm,
          &mmu->pae_root[i],
          &invalid_list);
   mmu->root_hpa = INVALID_PAGE;
  }
  mmu->root_cr3 = 0;
 }

 kvm_mmu_commit_zap_page(vcpu->kvm, &invalid_list);
 spin_unlock(&vcpu->kvm->mmu_lock);
}
