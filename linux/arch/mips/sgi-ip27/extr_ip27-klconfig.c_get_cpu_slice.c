
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int physid; } ;
struct TYPE_5__ {TYPE_1__ cpu_info; } ;
typedef TYPE_2__ klcpu_t ;
typedef int cpuid_t ;


 TYPE_2__* sn_get_cpuinfo (int ) ;

int get_cpu_slice(cpuid_t cpu)
{
 klcpu_t *acpu;

 if ((acpu = sn_get_cpuinfo(cpu)) == ((void*)0))
  return -1;
 return acpu->cpu_info.physid;
}
