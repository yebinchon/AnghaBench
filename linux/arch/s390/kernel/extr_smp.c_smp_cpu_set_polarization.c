
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int polarization; } ;


 TYPE_1__* pcpu_devices ;

void smp_cpu_set_polarization(int cpu, int val)
{
 pcpu_devices[cpu].polarization = val;
}
