
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int ARMV8_PMU_USERENR_EN ;
 int ARMV8_PMU_USERENR_ER ;
 int check_pmu_access_disabled (struct kvm_vcpu*,int) ;

__attribute__((used)) static bool pmu_access_event_counter_el0_disabled(struct kvm_vcpu *vcpu)
{
 return check_pmu_access_disabled(vcpu, ARMV8_PMU_USERENR_ER | ARMV8_PMU_USERENR_EN);
}
