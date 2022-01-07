
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct pt_regs {int dummy; } ;
struct cpu_hw_events {int enabled; } ;
struct TYPE_2__ {scalar_t__ late_ack; } ;


 int APIC_DM_NMI ;
 int APIC_LVTPC ;
 int WARN (int,char*) ;
 int __intel_pmu_disable_all () ;
 int __intel_pmu_enable_all (int ,int) ;
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
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static int intel_pmu_handle_irq(struct pt_regs *regs)
{
 struct cpu_hw_events *cpuc;
 int loops;
 u64 status;
 int handled;
 int pmu_enabled;

 cpuc = this_cpu_ptr(&cpu_hw_events);





 pmu_enabled = cpuc->enabled;




 if (!x86_pmu.late_ack)
  apic_write(APIC_LVTPC, APIC_DM_NMI);
 intel_bts_disable_local();
 cpuc->enabled = 0;
 __intel_pmu_disable_all();
 handled = intel_pmu_drain_bts_buffer();
 handled += intel_bts_interrupt();
 status = intel_pmu_get_status();
 if (!status)
  goto done;

 loops = 0;
again:
 intel_pmu_lbr_read();
 intel_pmu_ack_status(status);
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




 status = intel_pmu_get_status();
 if (status)
  goto again;

done:

 cpuc->enabled = pmu_enabled;
 if (pmu_enabled)
  __intel_pmu_enable_all(0, 1);
 intel_bts_enable_local();






 if (x86_pmu.late_ack)
  apic_write(APIC_LVTPC, APIC_DM_NMI);
 return handled;
}
