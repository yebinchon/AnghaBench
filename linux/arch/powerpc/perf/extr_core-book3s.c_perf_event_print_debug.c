
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned long n_counter; unsigned long name; int flags; } ;


 int MAX_HWEVENTS ;
 int PPMU_ARCH_207S ;
 int PPMU_HAS_SIER ;
 int SPRN_BESCR ;
 int SPRN_EBBHR ;
 int SPRN_EBBRR ;
 int SPRN_MMCR0 ;
 int SPRN_MMCR1 ;
 int SPRN_MMCR2 ;
 int SPRN_MMCRA ;
 int SPRN_SDAR ;
 int SPRN_SIAR ;
 int SPRN_SIER ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned long mfspr (int ) ;
 TYPE_1__* ppmu ;
 int pr_info (char*,...) ;
 int read_pmc (int) ;
 unsigned long smp_processor_id () ;

void perf_event_print_debug(void)
{
 unsigned long sdar, sier, flags;
 u32 pmcs[MAX_HWEVENTS];
 int i;

 if (!ppmu) {
  pr_info("Performance monitor hardware not registered.\n");
  return;
 }

 if (!ppmu->n_counter)
  return;

 local_irq_save(flags);

 pr_info("CPU: %d PMU registers, ppmu = %s n_counters = %d",
   smp_processor_id(), ppmu->name, ppmu->n_counter);

 for (i = 0; i < ppmu->n_counter; i++)
  pmcs[i] = read_pmc(i + 1);

 for (; i < MAX_HWEVENTS; i++)
  pmcs[i] = 0xdeadbeef;

 pr_info("PMC1:  %08x PMC2: %08x PMC3: %08x PMC4: %08x\n",
   pmcs[0], pmcs[1], pmcs[2], pmcs[3]);

 if (ppmu->n_counter > 4)
  pr_info("PMC5:  %08x PMC6: %08x PMC7: %08x PMC8: %08x\n",
    pmcs[4], pmcs[5], pmcs[6], pmcs[7]);

 pr_info("MMCR0: %016lx MMCR1: %016lx MMCRA: %016lx\n",
  mfspr(SPRN_MMCR0), mfspr(SPRN_MMCR1), mfspr(SPRN_MMCRA));

 sdar = sier = 0;
 pr_info("SIAR:  %016lx SDAR:  %016lx SIER:  %016lx\n",
  mfspr(SPRN_SIAR), sdar, sier);

 local_irq_restore(flags);
}
