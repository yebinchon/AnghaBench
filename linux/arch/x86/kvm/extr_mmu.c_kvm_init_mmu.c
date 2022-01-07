
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint ;
struct TYPE_4__ {TYPE_1__* mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int * prev_roots; int root_hpa; } ;


 int INVALID_PAGE ;
 size_t KVM_MMU_NUM_PREV_ROOTS ;
 int KVM_MMU_ROOT_INFO_INVALID ;
 int init_kvm_nested_mmu (struct kvm_vcpu*) ;
 int init_kvm_softmmu (struct kvm_vcpu*) ;
 int init_kvm_tdp_mmu (struct kvm_vcpu*) ;
 scalar_t__ mmu_is_nested (struct kvm_vcpu*) ;
 scalar_t__ tdp_enabled ;

void kvm_init_mmu(struct kvm_vcpu *vcpu, bool reset_roots)
{
 if (reset_roots) {
  uint i;

  vcpu->arch.mmu->root_hpa = INVALID_PAGE;

  for (i = 0; i < KVM_MMU_NUM_PREV_ROOTS; i++)
   vcpu->arch.mmu->prev_roots[i] = KVM_MMU_ROOT_INFO_INVALID;
 }

 if (mmu_is_nested(vcpu))
  init_kvm_nested_mmu(vcpu);
 else if (tdp_enabled)
  init_kvm_tdp_mmu(vcpu);
 else
  init_kvm_softmmu(vcpu);
}
