
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {scalar_t__ direct_map; } ;


 int mmu_alloc_direct_roots (struct kvm_vcpu*) ;
 int mmu_alloc_shadow_roots (struct kvm_vcpu*) ;

__attribute__((used)) static int mmu_alloc_roots(struct kvm_vcpu *vcpu)
{
 if (vcpu->arch.mmu->direct_map)
  return mmu_alloc_direct_roots(vcpu);
 else
  return mmu_alloc_shadow_roots(vcpu);
}
