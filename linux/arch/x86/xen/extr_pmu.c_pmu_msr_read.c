
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {scalar_t__ x86_vendor; } ;


 scalar_t__ X86_VENDOR_INTEL ;
 TYPE_1__ boot_cpu_data ;
 scalar_t__ is_amd_pmu_msr (unsigned int) ;
 scalar_t__ is_intel_pmu_msr (unsigned int,int*,int*) ;
 int native_read_msr_safe (unsigned int,int*) ;
 int xen_amd_pmu_emulate (unsigned int,int *,int) ;
 int xen_intel_pmu_emulate (unsigned int,int *,int,int,int) ;

bool pmu_msr_read(unsigned int msr, uint64_t *val, int *err)
{
 if (boot_cpu_data.x86_vendor != X86_VENDOR_INTEL) {
  if (is_amd_pmu_msr(msr)) {
   if (!xen_amd_pmu_emulate(msr, val, 1))
    *val = native_read_msr_safe(msr, err);
   return 1;
  }
 } else {
  int type, index;

  if (is_intel_pmu_msr(msr, &type, &index)) {
   if (!xen_intel_pmu_emulate(msr, val, type, index, 1))
    *val = native_read_msr_safe(msr, err);
   return 1;
  }
 }

 return 0;
}
