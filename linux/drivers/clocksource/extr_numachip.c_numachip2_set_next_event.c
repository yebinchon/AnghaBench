
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 scalar_t__ NUMACHIP2_TIMER_DEADLINE ;
 scalar_t__ numachip2_timer () ;
 int numachip2_write64_lcsr (scalar_t__,unsigned long) ;

__attribute__((used)) static int numachip2_set_next_event(unsigned long delta, struct clock_event_device *ced)
{
 numachip2_write64_lcsr(NUMACHIP2_TIMER_DEADLINE + numachip2_timer(),
  delta);
 return 0;
}
