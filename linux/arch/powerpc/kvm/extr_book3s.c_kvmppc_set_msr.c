
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct kvm_vcpu {TYPE_3__* kvm; } ;
struct TYPE_5__ {TYPE_1__* kvm_ops; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;
struct TYPE_4__ {int (* set_msr ) (struct kvm_vcpu*,int ) ;} ;


 int stub1 (struct kvm_vcpu*,int ) ;

void kvmppc_set_msr(struct kvm_vcpu *vcpu, u64 msr)
{
 vcpu->kvm->arch.kvm_ops->set_msr(vcpu, msr);
}
