
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int x86; } ;


 int * amd_f17h_perfmon_event_map ;
 int * amd_perfmon_event_map ;
 TYPE_1__ boot_cpu_data ;

__attribute__((used)) static u64 amd_pmu_event_map(int hw_event)
{
 if (boot_cpu_data.x86 >= 0x17)
  return amd_f17h_perfmon_event_map[hw_event];

 return amd_perfmon_event_map[hw_event];
}
