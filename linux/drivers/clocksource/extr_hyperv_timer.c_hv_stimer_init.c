
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {char* name; int rating; int set_next_event; int set_state_oneshot; int set_state_shutdown; int cpumask; int features; } ;
struct TYPE_2__ {int features; } ;


 int CLOCK_EVT_FEAT_ONESHOT ;
 int HV_CLOCK_HZ ;
 int HV_MAX_MAX_DELTA_TICKS ;
 int HV_MIN_DELTA_TICKS ;
 int HV_MSR_SYNTIMER_AVAILABLE ;
 int clockevents_config_and_register (struct clock_event_device*,int ,int ,int ) ;
 int cpumask_of (unsigned int) ;
 int hv_ce_set_next_event ;
 int hv_ce_set_oneshot ;
 int hv_ce_shutdown ;
 int hv_clock_event ;
 TYPE_1__ ms_hyperv ;
 struct clock_event_device* per_cpu_ptr (int ,unsigned int) ;

void hv_stimer_init(unsigned int cpu)
{
 struct clock_event_device *ce;






 if (!(ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE))
  return;

 ce = per_cpu_ptr(hv_clock_event, cpu);
 ce->name = "Hyper-V clockevent";
 ce->features = CLOCK_EVT_FEAT_ONESHOT;
 ce->cpumask = cpumask_of(cpu);
 ce->rating = 1000;
 ce->set_state_shutdown = hv_ce_shutdown;
 ce->set_state_oneshot = hv_ce_set_oneshot;
 ce->set_next_event = hv_ce_set_next_event;

 clockevents_config_and_register(ce,
     HV_CLOCK_HZ,
     HV_MIN_DELTA_TICKS,
     HV_MAX_MAX_DELTA_TICKS);
}
