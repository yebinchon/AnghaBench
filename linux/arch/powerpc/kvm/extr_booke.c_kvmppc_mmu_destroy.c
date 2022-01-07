
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {TYPE_3__* kvm; } ;
struct TYPE_5__ {TYPE_1__* kvm_ops; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;
struct TYPE_4__ {int (* mmu_destroy ) (struct kvm_vcpu*) ;} ;


 int stub1 (struct kvm_vcpu*) ;

void kvmppc_mmu_destroy(struct kvm_vcpu *vcpu)
{
 vcpu->kvm->arch.kvm_ops->mmu_destroy(vcpu);
}
