
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int x86_stepping; } ;


 TYPE_1__ boot_cpu_data ;

__attribute__((used)) static u32 bdx_deadline_rev(void)
{
 switch (boot_cpu_data.x86_stepping) {
 case 0x02: return 0x00000011;
 case 0x03: return 0x0700000e;
 case 0x04: return 0x0f00000c;
 case 0x05: return 0x0e000003;
 }

 return ~0U;
}
