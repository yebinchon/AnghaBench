
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct kvm_pmu {int irq_work; } ;
struct TYPE_4__ {TYPE_1__* pmu_ops; } ;
struct TYPE_3__ {int (* init ) (struct kvm_vcpu*) ;} ;


 int init_irq_work (int *,int ) ;
 int kvm_pmi_trigger_fn ;
 int kvm_pmu_refresh (struct kvm_vcpu*) ;
 TYPE_2__* kvm_x86_ops ;
 int memset (struct kvm_pmu*,int ,int) ;
 int stub1 (struct kvm_vcpu*) ;
 struct kvm_pmu* vcpu_to_pmu (struct kvm_vcpu*) ;

void kvm_pmu_init(struct kvm_vcpu *vcpu)
{
 struct kvm_pmu *pmu = vcpu_to_pmu(vcpu);

 memset(pmu, 0, sizeof(*pmu));
 kvm_x86_ops->pmu_ops->init(vcpu);
 init_irq_work(&pmu->irq_work, kvm_pmi_trigger_fn);
 kvm_pmu_refresh(vcpu);
}
