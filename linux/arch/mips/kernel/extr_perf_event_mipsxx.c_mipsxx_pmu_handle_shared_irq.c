
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct cpu_hw_events {int used_mask; } ;
struct TYPE_2__ {unsigned int num_counters; int (* read_counter ) (int) ;int overflow; } ;


 int CAUSEF_PCI ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ cpu_has_perf_cntr_intr_bit ;
 int cpu_hw_events ;
 struct pt_regs* get_irq_regs () ;
 int handle_associated_event (struct cpu_hw_events*,int,struct perf_sample_data*,struct pt_regs*) ;
 int irq_work_run () ;
 TYPE_1__ mipspmu ;
 int pause_local_counters () ;
 int perf_sample_data_init (struct perf_sample_data*,int ,int ) ;
 int pmuint_rwlock ;
 int read_c0_cause () ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int resume_local_counters () ;
 int stub1 (int) ;
 int test_bit (int,int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static int mipsxx_pmu_handle_shared_irq(void)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct perf_sample_data data;
 unsigned int counters = mipspmu.num_counters;
 u64 counter;
 int n, handled = IRQ_NONE;
 struct pt_regs *regs;

 if (cpu_has_perf_cntr_intr_bit && !(read_c0_cause() & CAUSEF_PCI))
  return handled;







 pause_local_counters();




 regs = get_irq_regs();

 perf_sample_data_init(&data, 0, 0);

 for (n = counters - 1; n >= 0; n--) {
  if (!test_bit(n, cpuc->used_mask))
   continue;

  counter = mipspmu.read_counter(n);
  if (!(counter & mipspmu.overflow))
   continue;

  handle_associated_event(cpuc, n, &data, regs);
  handled = IRQ_HANDLED;
 }




 resume_local_counters();






 if (handled == IRQ_HANDLED)
  irq_work_run();

 return handled;
}
