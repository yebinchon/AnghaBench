
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* update_cpu_topology ) () ;} ;


 TYPE_1__* mode ;
 int stub1 () ;

void numa_update_cpu_topology(void)
{
 if (mode->update_cpu_topology)
  mode->update_cpu_topology();
}
