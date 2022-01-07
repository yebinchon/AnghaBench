
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ x86_vendor; } ;


 scalar_t__ X86_VENDOR_INTEL ;
 TYPE_1__ boot_cpu_data ;
 unsigned long long xen_amd_read_pmc (int) ;
 unsigned long long xen_intel_read_pmc (int) ;

unsigned long long xen_read_pmc(int counter)
{
 if (boot_cpu_data.x86_vendor != X86_VENDOR_INTEL)
  return xen_amd_read_pmc(counter);
 else
  return xen_intel_read_pmc(counter);
}
