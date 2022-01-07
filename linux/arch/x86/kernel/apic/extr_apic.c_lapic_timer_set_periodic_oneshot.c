
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int features; } ;


 int CLOCK_EVT_FEAT_DUMMY ;
 int __setup_APIC_LVTT (int ,int,int) ;
 int lapic_timer_period ;

__attribute__((used)) static inline int
lapic_timer_set_periodic_oneshot(struct clock_event_device *evt, bool oneshot)
{

 if (evt->features & CLOCK_EVT_FEAT_DUMMY)
  return 0;

 __setup_APIC_LVTT(lapic_timer_period, oneshot, 1);
 return 0;
}
