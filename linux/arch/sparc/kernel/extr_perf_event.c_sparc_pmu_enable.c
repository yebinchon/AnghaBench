
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmu {int dummy; } ;
struct cpu_hw_events {int enabled; int * pcr; scalar_t__ n_events; } ;
struct TYPE_4__ {int (* write_pcr ) (int,int ) ;} ;
struct TYPE_3__ {int num_pcrs; } ;


 int barrier () ;
 int cpu_hw_events ;
 TYPE_2__* pcr_ops ;
 TYPE_1__* sparc_pmu ;
 int stub1 (int,int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int update_pcrs_for_enable (struct cpu_hw_events*) ;

__attribute__((used)) static void sparc_pmu_enable(struct pmu *pmu)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 int i;

 if (cpuc->enabled)
  return;

 cpuc->enabled = 1;
 barrier();

 if (cpuc->n_events)
  update_pcrs_for_enable(cpuc);

 for (i = 0; i < sparc_pmu->num_pcrs; i++)
  pcr_ops->write_pcr(i, cpuc->pcr[i]);
}
