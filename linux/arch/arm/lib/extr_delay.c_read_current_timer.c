
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long (* read_current_timer ) () ;} ;


 int ENXIO ;
 TYPE_1__* delay_timer ;
 unsigned long stub1 () ;

int read_current_timer(unsigned long *timer_val)
{
 if (!delay_timer)
  return -ENXIO;

 *timer_val = delay_timer->read_current_timer();
 return 0;
}
