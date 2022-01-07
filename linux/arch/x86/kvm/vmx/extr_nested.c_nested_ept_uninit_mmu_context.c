
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int root_mmu; int * walk_mmu; int * mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



__attribute__((used)) static void nested_ept_uninit_mmu_context(struct kvm_vcpu *vcpu)
{
 vcpu->arch.mmu = &vcpu->arch.root_mmu;
 vcpu->arch.walk_mmu = &vcpu->arch.root_mmu;
}
