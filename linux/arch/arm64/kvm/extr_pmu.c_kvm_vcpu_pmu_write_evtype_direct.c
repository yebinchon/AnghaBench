
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



 int PMEVTYPER_CASES (int ) ;
 int WARN_ON (int) ;
 int WRITE ;
 int pmccfiltr_el0 ;
 int write_sysreg (int ,int ) ;

__attribute__((used)) static void kvm_vcpu_pmu_write_evtype_direct(int idx, u32 val)
{
 switch (idx) {
 PMEVTYPER_CASES(WRITE);
 case 128:
  write_sysreg(val, pmccfiltr_el0);
  break;
 default:
  WARN_ON(1);
 }
}
