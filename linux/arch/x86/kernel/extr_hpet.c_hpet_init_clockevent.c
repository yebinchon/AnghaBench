
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {unsigned int rating; int set_state_periodic; int features; int set_state_shutdown; int set_next_event; int set_state_oneshot; int cpumask; int name; int irq; } ;
struct hpet_channel {int boot_cfg; int cpu; int name; int irq; struct clock_event_device evt; } ;


 int CLOCK_EVT_FEAT_ONESHOT ;
 int CLOCK_EVT_FEAT_PERIODIC ;
 int HPET_TN_PERIODIC ;
 int cpumask_of (int ) ;
 int hpet_clkevt_set_next_event ;
 int hpet_clkevt_set_state_oneshot ;
 int hpet_clkevt_set_state_periodic ;
 int hpet_clkevt_set_state_shutdown ;

__attribute__((used)) static void hpet_init_clockevent(struct hpet_channel *hc, unsigned int rating)
{
 struct clock_event_device *evt = &hc->evt;

 evt->rating = rating;
 evt->irq = hc->irq;
 evt->name = hc->name;
 evt->cpumask = cpumask_of(hc->cpu);
 evt->set_state_oneshot = hpet_clkevt_set_state_oneshot;
 evt->set_next_event = hpet_clkevt_set_next_event;
 evt->set_state_shutdown = hpet_clkevt_set_state_shutdown;

 evt->features = CLOCK_EVT_FEAT_ONESHOT;
 if (hc->boot_cfg & HPET_TN_PERIODIC) {
  evt->features |= CLOCK_EVT_FEAT_PERIODIC;
  evt->set_state_periodic = hpet_clkevt_set_state_periodic;
 }
}
