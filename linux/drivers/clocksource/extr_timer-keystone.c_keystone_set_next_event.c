
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int TCR_ENAMODE_ONESHOT_MASK ;
 int keystone_timer_config (unsigned long,int ) ;

__attribute__((used)) static int keystone_set_next_event(unsigned long cycles,
      struct clock_event_device *evt)
{
 return keystone_timer_config(cycles, TCR_ENAMODE_ONESHOT_MASK);
}
