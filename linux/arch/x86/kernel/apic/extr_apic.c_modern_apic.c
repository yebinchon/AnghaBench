
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ x86_vendor; int x86; } ;


 scalar_t__ X86_VENDOR_AMD ;
 scalar_t__ X86_VENDOR_HYGON ;
 TYPE_1__ boot_cpu_data ;
 int lapic_get_version () ;

__attribute__((used)) static int modern_apic(void)
{

 if (boot_cpu_data.x86_vendor == X86_VENDOR_AMD &&
     boot_cpu_data.x86 >= 0xf)
  return 1;


 if (boot_cpu_data.x86_vendor == X86_VENDOR_HYGON)
  return 1;

 return lapic_get_version() >= 0x14;
}
