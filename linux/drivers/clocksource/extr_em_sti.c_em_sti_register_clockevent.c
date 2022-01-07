
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int rating; int set_state_oneshot; int set_state_shutdown; int set_next_event; int cpumask; int features; int name; } ;
struct em_sti_priv {int rate; TYPE_1__* pdev; struct clock_event_device ced; } ;
struct TYPE_2__ {int dev; } ;


 int CLOCK_EVT_FEAT_ONESHOT ;
 int clockevents_config_and_register (struct clock_event_device*,int ,int,int) ;
 int cpu_possible_mask ;
 int dev_info (int *,char*) ;
 int dev_name (int *) ;
 int em_sti_clock_event_next ;
 int em_sti_clock_event_set_oneshot ;
 int em_sti_clock_event_shutdown ;

__attribute__((used)) static void em_sti_register_clockevent(struct em_sti_priv *p)
{
 struct clock_event_device *ced = &p->ced;

 ced->name = dev_name(&p->pdev->dev);
 ced->features = CLOCK_EVT_FEAT_ONESHOT;
 ced->rating = 200;
 ced->cpumask = cpu_possible_mask;
 ced->set_next_event = em_sti_clock_event_next;
 ced->set_state_shutdown = em_sti_clock_event_shutdown;
 ced->set_state_oneshot = em_sti_clock_event_set_oneshot;

 dev_info(&p->pdev->dev, "used for clock events\n");

 clockevents_config_and_register(ced, p->rate, 2, 0xffffffff);
}
