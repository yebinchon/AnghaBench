
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* mmu; } ;
struct kvm_vcpu {TYPE_3__* kvm; TYPE_2__ arch; } ;
struct kvm_mmu_page {int unsync_children; int unsync; } ;
typedef int hpa_t ;
struct TYPE_6__ {int mmu_lock; } ;
struct TYPE_4__ {scalar_t__ root_level; int * pae_root; int root_hpa; scalar_t__ direct_map; } ;


 int AUDIT_POST_SYNC ;
 int AUDIT_PRE_SYNC ;
 int MMIO_GVA_ANY ;
 int PT64_BASE_ADDR_MASK ;
 scalar_t__ PT64_ROOT_4LEVEL ;
 scalar_t__ VALID_PAGE (int ) ;
 int kvm_mmu_audit (struct kvm_vcpu*,int ) ;
 int mmu_sync_children (struct kvm_vcpu*,struct kvm_mmu_page*) ;
 struct kvm_mmu_page* page_header (int ) ;
 int smp_load_acquire (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vcpu_clear_mmio_info (struct kvm_vcpu*,int ) ;

void kvm_mmu_sync_roots(struct kvm_vcpu *vcpu)
{
 int i;
 struct kvm_mmu_page *sp;

 if (vcpu->arch.mmu->direct_map)
  return;

 if (!VALID_PAGE(vcpu->arch.mmu->root_hpa))
  return;

 vcpu_clear_mmio_info(vcpu, MMIO_GVA_ANY);

 if (vcpu->arch.mmu->root_level >= PT64_ROOT_4LEVEL) {
  hpa_t root = vcpu->arch.mmu->root_hpa;
  sp = page_header(root);
  if (!smp_load_acquire(&sp->unsync) &&
      !smp_load_acquire(&sp->unsync_children))
   return;

  spin_lock(&vcpu->kvm->mmu_lock);
  kvm_mmu_audit(vcpu, AUDIT_PRE_SYNC);

  mmu_sync_children(vcpu, sp);

  kvm_mmu_audit(vcpu, AUDIT_POST_SYNC);
  spin_unlock(&vcpu->kvm->mmu_lock);
  return;
 }

 spin_lock(&vcpu->kvm->mmu_lock);
 kvm_mmu_audit(vcpu, AUDIT_PRE_SYNC);

 for (i = 0; i < 4; ++i) {
  hpa_t root = vcpu->arch.mmu->pae_root[i];

  if (root && VALID_PAGE(root)) {
   root &= PT64_BASE_ADDR_MASK;
   sp = page_header(root);
   mmu_sync_children(vcpu, sp);
  }
 }

 kvm_mmu_audit(vcpu, AUDIT_POST_SYNC);
 spin_unlock(&vcpu->kvm->mmu_lock);
}
