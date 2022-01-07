
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msr_data {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pmu_ops; } ;
struct TYPE_3__ {int (* set_msr ) (struct kvm_vcpu*,struct msr_data*) ;} ;


 TYPE_2__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,struct msr_data*) ;

int kvm_pmu_set_msr(struct kvm_vcpu *vcpu, struct msr_data *msr_info)
{
 return kvm_x86_ops->pmu_ops->set_msr(vcpu, msr_info);
}
