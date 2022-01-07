
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pmu_ops; } ;
struct TYPE_3__ {int (* get_msr ) (struct kvm_vcpu*,int ,int *) ;} ;


 TYPE_2__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,int ,int *) ;

int kvm_pmu_get_msr(struct kvm_vcpu *vcpu, u32 msr, u64 *data)
{
 return kvm_x86_ops->pmu_ops->get_msr(vcpu, msr, data);
}
