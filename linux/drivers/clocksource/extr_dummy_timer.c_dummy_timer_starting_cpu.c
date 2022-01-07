
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {char* name; int features; int rating; int cpumask; } ;


 int CLOCK_EVT_FEAT_DUMMY ;
 int CLOCK_EVT_FEAT_ONESHOT ;
 int CLOCK_EVT_FEAT_PERIODIC ;
 int clockevents_register_device (struct clock_event_device*) ;
 int cpumask_of (unsigned int) ;
 int dummy_timer_evt ;
 struct clock_event_device* per_cpu_ptr (int *,unsigned int) ;

__attribute__((used)) static int dummy_timer_starting_cpu(unsigned int cpu)
{
 struct clock_event_device *evt = per_cpu_ptr(&dummy_timer_evt, cpu);

 evt->name = "dummy_timer";
 evt->features = CLOCK_EVT_FEAT_PERIODIC |
     CLOCK_EVT_FEAT_ONESHOT |
     CLOCK_EVT_FEAT_DUMMY;
 evt->rating = 100;
 evt->cpumask = cpumask_of(cpu);

 clockevents_register_device(evt);
 return 0;
}
