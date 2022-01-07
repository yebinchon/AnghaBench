
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {TYPE_1__* kvm_ops; } ;
struct kvm {TYPE_2__ arch; } ;
struct TYPE_3__ {struct kvm_vcpu* (* vcpu_create ) (struct kvm*,unsigned int) ;} ;


 struct kvm_vcpu* stub1 (struct kvm*,unsigned int) ;

struct kvm_vcpu *kvmppc_core_vcpu_create(struct kvm *kvm, unsigned int id)
{
 return kvm->arch.kvm_ops->vcpu_create(kvm, id);
}
