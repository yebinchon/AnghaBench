
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int PTIM_LVR ;
 int mtcr (int ,unsigned long) ;

__attribute__((used)) static int csky_mptimer_set_next_event(unsigned long delta,
           struct clock_event_device *ce)
{
 mtcr(PTIM_LVR, delta);

 return 0;
}
