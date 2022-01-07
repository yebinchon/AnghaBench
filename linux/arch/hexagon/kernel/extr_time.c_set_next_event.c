
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_2__ {int enable; int match; int clear; } ;


 int TIMER_ENABLE ;
 int iowrite32 (int,int *) ;
 TYPE_1__* rtos_timer ;

__attribute__((used)) static int set_next_event(unsigned long delta, struct clock_event_device *evt)
{


 iowrite32(1, &rtos_timer->clear);
 iowrite32(0, &rtos_timer->clear);

 iowrite32(delta, &rtos_timer->match);
 iowrite32(1 << TIMER_ENABLE, &rtos_timer->enable);
 return 0;
}
