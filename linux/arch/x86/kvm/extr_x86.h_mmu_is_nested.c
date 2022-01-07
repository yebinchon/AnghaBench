
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nested_mmu; int * walk_mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



__attribute__((used)) static inline bool mmu_is_nested(struct kvm_vcpu *vcpu)
{
 return vcpu->arch.walk_mmu == &vcpu->arch.nested_mmu;
}
