
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct kvm_pmu {int irq_work; } ;
struct TYPE_4__ {TYPE_1__* pmu_ops; } ;
struct TYPE_3__ {int (* reset ) (struct kvm_vcpu*) ;} ;


 int irq_work_sync (int *) ;
 TYPE_2__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*) ;
 struct kvm_pmu* vcpu_to_pmu (struct kvm_vcpu*) ;

void kvm_pmu_reset(struct kvm_vcpu *vcpu)
{
 struct kvm_pmu *pmu = vcpu_to_pmu(vcpu);

 irq_work_sync(&pmu->irq_work);
 kvm_x86_ops->pmu_ops->reset(vcpu);
}
