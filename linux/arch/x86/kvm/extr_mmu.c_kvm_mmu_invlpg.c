
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int invlpg; } ;
struct TYPE_7__ {struct kvm_mmu* mmu; } ;
struct kvm_vcpu {TYPE_2__ stat; TYPE_3__ arch; } ;
struct kvm_mmu {TYPE_1__* prev_roots; int (* invlpg ) (struct kvm_vcpu*,int ,int ) ;int root_hpa; } ;
typedef int gva_t ;
struct TYPE_8__ {int (* tlb_flush_gva ) (struct kvm_vcpu*,int ) ;} ;
struct TYPE_5__ {int hpa; } ;


 int KVM_MMU_NUM_PREV_ROOTS ;
 scalar_t__ VALID_PAGE (int ) ;
 scalar_t__ is_noncanonical_address (int ,struct kvm_vcpu*) ;
 TYPE_4__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,int ,int ) ;
 int stub2 (struct kvm_vcpu*,int ,int ) ;
 int stub3 (struct kvm_vcpu*,int ) ;

void kvm_mmu_invlpg(struct kvm_vcpu *vcpu, gva_t gva)
{
 struct kvm_mmu *mmu = vcpu->arch.mmu;
 int i;


 if (is_noncanonical_address(gva, vcpu))
  return;

 mmu->invlpg(vcpu, gva, mmu->root_hpa);
 for (i = 0; i < KVM_MMU_NUM_PREV_ROOTS; i++)
  if (VALID_PAGE(mmu->prev_roots[i].hpa))
   mmu->invlpg(vcpu, gva, mmu->prev_roots[i].hpa);

 kvm_x86_ops->tlb_flush_gva(vcpu, gva);
 ++vcpu->stat.invlpg;
}
