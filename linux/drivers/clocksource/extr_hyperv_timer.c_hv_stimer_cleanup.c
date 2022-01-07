
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_2__ {int features; } ;


 int HV_MSR_SYNTIMER_AVAILABLE ;
 int hv_ce_shutdown (struct clock_event_device*) ;
 int hv_clock_event ;
 TYPE_1__ ms_hyperv ;
 struct clock_event_device* per_cpu_ptr (int ,unsigned int) ;

void hv_stimer_cleanup(unsigned int cpu)
{
 struct clock_event_device *ce;


 if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE) {
  ce = per_cpu_ptr(hv_clock_event, cpu);
  hv_ce_shutdown(ce);
 }
}
