
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ x86_vendor; int x86; int x86_model; } ;





 scalar_t__ X86_VENDOR_INTEL ;
 TYPE_1__ boot_cpu_data ;

__attribute__((used)) static u64 get_prefetch_disable_bits(void)
{
 if (boot_cpu_data.x86_vendor != X86_VENDOR_INTEL ||
     boot_cpu_data.x86 != 6)
  return 0;

 switch (boot_cpu_data.x86_model) {
 case 128:
  return 0xF;
 case 130:
 case 129:
  return 0x5;
 }

 return 0;
}
