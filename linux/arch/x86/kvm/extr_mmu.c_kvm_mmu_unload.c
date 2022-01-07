
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int root_hpa; } ;
struct TYPE_3__ {TYPE_2__ guest_mmu; TYPE_2__ root_mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int KVM_MMU_ROOTS_ALL ;
 int VALID_PAGE (int ) ;
 int WARN_ON (int ) ;
 int kvm_mmu_free_roots (struct kvm_vcpu*,TYPE_2__*,int ) ;

void kvm_mmu_unload(struct kvm_vcpu *vcpu)
{
 kvm_mmu_free_roots(vcpu, &vcpu->arch.root_mmu, KVM_MMU_ROOTS_ALL);
 WARN_ON(VALID_PAGE(vcpu->arch.root_mmu.root_hpa));
 kvm_mmu_free_roots(vcpu, &vcpu->arch.guest_mmu, KVM_MMU_ROOTS_ALL);
 WARN_ON(VALID_PAGE(vcpu->arch.guest_mmu.root_hpa));
}
