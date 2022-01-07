
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_pmc {scalar_t__ type; } ;


 scalar_t__ KVM_PMC_GP ;

__attribute__((used)) static inline bool pmc_is_gp(struct kvm_pmc *pmc)
{
 return pmc->type == KVM_PMC_GP;
}
