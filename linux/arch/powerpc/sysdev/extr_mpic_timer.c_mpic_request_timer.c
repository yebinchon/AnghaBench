
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time64_t ;
struct mpic_timer {void* dev; int irq; } ;
typedef int irq_handler_t ;


 int IRQF_TRIGGER_LOW ;
 struct mpic_timer* get_timer (scalar_t__) ;
 scalar_t__ list_empty (int *) ;
 int mpic_free_timer (struct mpic_timer*) ;
 int request_irq (int ,int ,int ,char*,void*) ;
 int timer_group_list ;

struct mpic_timer *mpic_request_timer(irq_handler_t fn, void *dev,
          time64_t time)
{
 struct mpic_timer *allocated_timer;
 int ret;

 if (list_empty(&timer_group_list))
  return ((void*)0);

 if (time < 0)
  return ((void*)0);

 allocated_timer = get_timer(time);
 if (!allocated_timer)
  return ((void*)0);

 ret = request_irq(allocated_timer->irq, fn,
   IRQF_TRIGGER_LOW, "global-timer", dev);
 if (ret) {
  mpic_free_timer(allocated_timer);
  return ((void*)0);
 }

 allocated_timer->dev = dev;

 return allocated_timer;
}
