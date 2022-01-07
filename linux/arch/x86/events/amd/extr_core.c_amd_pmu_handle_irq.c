
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct cpu_hw_events {int active_mask; } ;


 int NMI_DONE ;
 int NMI_HANDLED ;
 int X86_PMC_IDX_MAX ;
 int __bitmap_weight (int ,int ) ;
 int cpu_hw_events ;
 scalar_t__ jiffies ;
 int perf_nmi_tstamp ;
 scalar_t__ perf_nmi_window ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 int this_cpu_read (int ) ;
 int this_cpu_write (int ,scalar_t__) ;
 scalar_t__ time_after (scalar_t__,int ) ;
 int x86_pmu_handle_irq (struct pt_regs*) ;

__attribute__((used)) static int amd_pmu_handle_irq(struct pt_regs *regs)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 int active, handled;






 active = __bitmap_weight(cpuc->active_mask, X86_PMC_IDX_MAX);


 handled = x86_pmu_handle_irq(regs);





 if (handled) {
  this_cpu_write(perf_nmi_tstamp,
          jiffies + perf_nmi_window);

  return handled;
 }

 if (time_after(jiffies, this_cpu_read(perf_nmi_tstamp)))
  return NMI_DONE;

 return NMI_HANDLED;
}
