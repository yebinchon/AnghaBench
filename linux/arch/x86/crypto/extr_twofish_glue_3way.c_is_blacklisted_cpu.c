
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ x86_vendor; int x86; int x86_model; } ;


 scalar_t__ X86_VENDOR_INTEL ;
 TYPE_1__ boot_cpu_data ;

__attribute__((used)) static bool is_blacklisted_cpu(void)
{
 if (boot_cpu_data.x86_vendor != X86_VENDOR_INTEL)
  return 0;

 if (boot_cpu_data.x86 == 0x06 &&
  (boot_cpu_data.x86_model == 0x1c ||
   boot_cpu_data.x86_model == 0x26 ||
   boot_cpu_data.x86_model == 0x36)) {
  return 1;
 }

 if (boot_cpu_data.x86 == 0x0f) {






  return 1;
 }

 return 0;
}
