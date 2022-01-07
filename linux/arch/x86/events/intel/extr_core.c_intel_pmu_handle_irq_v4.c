
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct pt_regs {int dummy; } ;
struct cpu_hw_events {int enabled; int active_mask; } ;


 int APIC_DM_NMI ;
 int APIC_LVTPC ;
 int INTEL_PMC_IDX_FIXED_BTS ;
 int WARN (int,char*) ;
 int apic_write (int ,int ) ;
 int cpu_hw_events ;
 scalar_t__ handle_pmi_common (struct pt_regs*,scalar_t__) ;
 int intel_bts_disable_local () ;
 int intel_bts_enable_local () ;
 scalar_t__ intel_bts_interrupt () ;
 int intel_pmu_ack_status (scalar_t__) ;
 int intel_pmu_drain_bts_buffer () ;
 scalar_t__ intel_pmu_get_status () ;
 int intel_pmu_lbr_read () ;
 int intel_pmu_reset () ;
 int perf_event_print_debug () ;
 scalar_t__ test_bit (int ,int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static int intel_pmu_handle_irq_v4(struct pt_regs *regs)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 int handled = 0;
 bool bts = 0;
 u64 status;
 int pmu_enabled = cpuc->enabled;
 int loops = 0;


 cpuc->enabled = 0;
 if (test_bit(INTEL_PMC_IDX_FIXED_BTS, cpuc->active_mask)) {
  bts = 1;
  intel_bts_disable_local();
  handled = intel_pmu_drain_bts_buffer();
  handled += intel_bts_interrupt();
 }
 status = intel_pmu_get_status();
 if (!status)
  goto done;
again:
 intel_pmu_lbr_read();
 if (++loops > 100) {
  static bool warned;

  if (!warned) {
   WARN(1, "perfevents: irq loop stuck!\n");
   perf_event_print_debug();
   warned = 1;
  }
  intel_pmu_reset();
  goto done;
 }


 handled += handle_pmi_common(regs, status);
done:

 apic_write(APIC_LVTPC, APIC_DM_NMI);






 if (status) {
  intel_pmu_ack_status(status);
 } else {
  status = intel_pmu_get_status();
  if (status)
   goto again;
 }

 if (bts)
  intel_bts_enable_local();
 cpuc->enabled = pmu_enabled;
 return handled;
}
