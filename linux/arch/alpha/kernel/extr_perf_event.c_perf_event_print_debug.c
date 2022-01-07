
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* pmc_count_shift; unsigned long* pmc_count_mask; } ;


 int PERFMON_CMD_READ ;
 TYPE_1__* alpha_pmu ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pr_info (char*,int,int,int) ;
 int smp_processor_id () ;
 int supported_cpu () ;
 unsigned long wrperfmon (int ,int ) ;

void perf_event_print_debug(void)
{
 unsigned long flags;
 unsigned long pcr;
 int pcr0, pcr1;
 int cpu;

 if (!supported_cpu())
  return;

 local_irq_save(flags);

 cpu = smp_processor_id();

 pcr = wrperfmon(PERFMON_CMD_READ, 0);
 pcr0 = (pcr >> alpha_pmu->pmc_count_shift[0]) & alpha_pmu->pmc_count_mask[0];
 pcr1 = (pcr >> alpha_pmu->pmc_count_shift[1]) & alpha_pmu->pmc_count_mask[1];

 pr_info("CPU#%d: PCTR0[%06x] PCTR1[%06x]\n", cpu, pcr0, pcr1);

 local_irq_restore(flags);
}
