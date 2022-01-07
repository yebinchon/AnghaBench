
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_pmu {int global_ctrl; } ;
struct kvm_pmc {int idx; } ;


 struct kvm_pmu* pmc_to_pmu (struct kvm_pmc*) ;
 int test_bit (int ,unsigned long*) ;

__attribute__((used)) static bool intel_pmc_is_enabled(struct kvm_pmc *pmc)
{
 struct kvm_pmu *pmu = pmc_to_pmu(pmc);

 return test_bit(pmc->idx, (unsigned long *)&pmu->global_ctrl);
}
