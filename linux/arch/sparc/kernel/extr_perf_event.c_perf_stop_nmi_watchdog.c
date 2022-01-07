
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cpu_hw_events {int * pcr; } ;
struct TYPE_4__ {int (* read_pcr ) (int) ;} ;
struct TYPE_3__ {int num_pcrs; } ;


 int cpu_hw_events ;
 TYPE_2__* pcr_ops ;
 TYPE_1__* sparc_pmu ;
 int stop_nmi_watchdog (int *) ;
 int stub1 (int) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void perf_stop_nmi_watchdog(void *unused)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 int i;

 stop_nmi_watchdog(((void*)0));
 for (i = 0; i < sparc_pmu->num_pcrs; i++)
  cpuc->pcr[i] = pcr_ops->read_pcr(i);
}
