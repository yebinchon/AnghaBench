
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* mmu; } ;
struct kvm_vcpu {TYPE_3__ arch; TYPE_1__* kvm; } ;
struct kvm_mmu_page {int* spt; int root_count; } ;
typedef int hpa_t ;
struct TYPE_5__ {scalar_t__ shadow_root_level; int* pae_root; int (* get_cr3 ) (struct kvm_vcpu*) ;int root_cr3; void* root_hpa; } ;
struct TYPE_4__ {int mmu_lock; } ;


 int ACC_ALL ;
 int BUG () ;
 int ENOSPC ;
 int MMU_WARN_ON (int ) ;
 int PAGE_SHIFT ;
 scalar_t__ PT32E_ROOT_LEVEL ;
 scalar_t__ PT32_ROOT_LEVEL ;
 scalar_t__ PT64_ROOT_4LEVEL ;
 int PT_PRESENT_MASK ;
 int VALID_PAGE (int) ;
 void* __pa (int*) ;
 struct kvm_mmu_page* kvm_mmu_get_page (struct kvm_vcpu*,unsigned int,unsigned int,scalar_t__,int,int ) ;
 scalar_t__ make_mmu_pages_available (struct kvm_vcpu*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct kvm_vcpu*) ;

__attribute__((used)) static int mmu_alloc_direct_roots(struct kvm_vcpu *vcpu)
{
 struct kvm_mmu_page *sp;
 unsigned i;

 if (vcpu->arch.mmu->shadow_root_level >= PT64_ROOT_4LEVEL) {
  spin_lock(&vcpu->kvm->mmu_lock);
  if(make_mmu_pages_available(vcpu) < 0) {
   spin_unlock(&vcpu->kvm->mmu_lock);
   return -ENOSPC;
  }
  sp = kvm_mmu_get_page(vcpu, 0, 0,
    vcpu->arch.mmu->shadow_root_level, 1, ACC_ALL);
  ++sp->root_count;
  spin_unlock(&vcpu->kvm->mmu_lock);
  vcpu->arch.mmu->root_hpa = __pa(sp->spt);
 } else if (vcpu->arch.mmu->shadow_root_level == PT32E_ROOT_LEVEL) {
  for (i = 0; i < 4; ++i) {
   hpa_t root = vcpu->arch.mmu->pae_root[i];

   MMU_WARN_ON(VALID_PAGE(root));
   spin_lock(&vcpu->kvm->mmu_lock);
   if (make_mmu_pages_available(vcpu) < 0) {
    spin_unlock(&vcpu->kvm->mmu_lock);
    return -ENOSPC;
   }
   sp = kvm_mmu_get_page(vcpu, i << (30 - PAGE_SHIFT),
     i << 30, PT32_ROOT_LEVEL, 1, ACC_ALL);
   root = __pa(sp->spt);
   ++sp->root_count;
   spin_unlock(&vcpu->kvm->mmu_lock);
   vcpu->arch.mmu->pae_root[i] = root | PT_PRESENT_MASK;
  }
  vcpu->arch.mmu->root_hpa = __pa(vcpu->arch.mmu->pae_root);
 } else
  BUG();
 vcpu->arch.mmu->root_cr3 = vcpu->arch.mmu->get_cr3(vcpu);

 return 0;
}
