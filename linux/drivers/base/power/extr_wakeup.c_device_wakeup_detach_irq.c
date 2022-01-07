
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wakeup_source {int * wakeirq; } ;
struct TYPE_2__ {struct wakeup_source* wakeup; } ;
struct device {TYPE_1__ power; } ;



void device_wakeup_detach_irq(struct device *dev)
{
 struct wakeup_source *ws;

 ws = dev->power.wakeup;
 if (ws)
  ws->wakeirq = ((void*)0);
}
