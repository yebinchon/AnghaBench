
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PWR_EVENT_EXIT ;
 scalar_t__ omap_irq_pending () ;
 int omap_sram_idle () ;
 int smp_processor_id () ;
 int trace_cpu_idle_rcuidle (int,int ) ;

__attribute__((used)) static void omap3_pm_idle(void)
{
 if (omap_irq_pending())
  return;

 trace_cpu_idle_rcuidle(1, smp_processor_id());

 omap_sram_idle();

 trace_cpu_idle_rcuidle(PWR_EVENT_EXIT, smp_processor_id());
}
