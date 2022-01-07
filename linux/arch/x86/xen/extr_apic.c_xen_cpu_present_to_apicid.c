
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int apicid; } ;


 int BAD_APICID ;
 TYPE_1__ cpu_data (int) ;
 scalar_t__ cpu_present (int) ;

__attribute__((used)) static int xen_cpu_present_to_apicid(int cpu)
{
 if (cpu_present(cpu))
  return cpu_data(cpu).apicid;
 else
  return BAD_APICID;
}
