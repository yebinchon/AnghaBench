
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_pmc {int dummy; } ;



__attribute__((used)) static bool amd_pmc_is_enabled(struct kvm_pmc *pmc)
{
 return 1;
}
