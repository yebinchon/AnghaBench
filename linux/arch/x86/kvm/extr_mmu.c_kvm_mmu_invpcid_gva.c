
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint ;
struct TYPE_7__ {int invlpg; } ;
struct TYPE_5__ {struct kvm_mmu* mmu; } ;
struct kvm_vcpu {TYPE_3__ stat; TYPE_1__ arch; } ;
struct kvm_mmu {TYPE_2__* prev_roots; int (* invlpg ) (struct kvm_vcpu*,int ,int ) ;int root_hpa; } ;
typedef int gva_t ;
struct TYPE_8__ {int (* tlb_flush_gva ) (struct kvm_vcpu*,int ) ;} ;
struct TYPE_6__ {int hpa; int cr3; } ;


 size_t KVM_MMU_NUM_PREV_ROOTS ;
 scalar_t__ VALID_PAGE (int ) ;
 unsigned long kvm_get_active_pcid (struct kvm_vcpu*) ;
 unsigned long kvm_get_pcid (struct kvm_vcpu*,int ) ;
 TYPE_4__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,int ,int ) ;
 int stub2 (struct kvm_vcpu*,int ,int ) ;
 int stub3 (struct kvm_vcpu*,int ) ;

void kvm_mmu_invpcid_gva(struct kvm_vcpu *vcpu, gva_t gva, unsigned long pcid)
{
 struct kvm_mmu *mmu = vcpu->arch.mmu;
 bool tlb_flush = 0;
 uint i;

 if (pcid == kvm_get_active_pcid(vcpu)) {
  mmu->invlpg(vcpu, gva, mmu->root_hpa);
  tlb_flush = 1;
 }

 for (i = 0; i < KVM_MMU_NUM_PREV_ROOTS; i++) {
  if (VALID_PAGE(mmu->prev_roots[i].hpa) &&
      pcid == kvm_get_pcid(vcpu, mmu->prev_roots[i].cr3)) {
   mmu->invlpg(vcpu, gva, mmu->prev_roots[i].hpa);
   tlb_flush = 1;
  }
 }

 if (tlb_flush)
  kvm_x86_ops->tlb_flush_gva(vcpu, gva);

 ++vcpu->stat.invlpg;






}
