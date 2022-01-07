
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



 int PMEVTYPER_CASES (int ) ;
 int READ ;
 int WARN_ON (int) ;
 int pmccfiltr_el0 ;
 int read_sysreg (int ) ;

__attribute__((used)) static u64 kvm_vcpu_pmu_read_evtype_direct(int idx)
{
 switch (idx) {
 PMEVTYPER_CASES(READ);
 case 128:
  return read_sysreg(pmccfiltr_el0);
 default:
  WARN_ON(1);
 }

 return 0;
}
