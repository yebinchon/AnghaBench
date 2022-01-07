
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_pmu {int * counter_bitmask; } ;
struct kvm_pmc {size_t type; } ;


 struct kvm_pmu* pmc_to_pmu (struct kvm_pmc*) ;

__attribute__((used)) static inline u64 pmc_bitmask(struct kvm_pmc *pmc)
{
 struct kvm_pmu *pmu = pmc_to_pmu(pmc);

 return pmu->counter_bitmask[pmc->type];
}
