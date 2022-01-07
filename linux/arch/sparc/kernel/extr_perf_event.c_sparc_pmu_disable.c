
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct pmu {int dummy; } ;
struct cpu_hw_events {int* pcr; scalar_t__ n_added; scalar_t__ enabled; } ;
struct TYPE_4__ {int (* write_pcr ) (int,int) ;} ;
struct TYPE_3__ {int num_pcrs; int user_bit; int priv_bit; int hv_bit; int irq_bit; } ;


 int cpu_hw_events ;
 TYPE_2__* pcr_ops ;
 TYPE_1__* sparc_pmu ;
 int stub1 (int,int) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void sparc_pmu_disable(struct pmu *pmu)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 int i;

 if (!cpuc->enabled)
  return;

 cpuc->enabled = 0;
 cpuc->n_added = 0;

 for (i = 0; i < sparc_pmu->num_pcrs; i++) {
  u64 val = cpuc->pcr[i];

  val &= ~(sparc_pmu->user_bit | sparc_pmu->priv_bit |
    sparc_pmu->hv_bit | sparc_pmu->irq_bit);
  cpuc->pcr[i] = val;
  pcr_ops->write_pcr(i, cpuc->pcr[i]);
 }
}
