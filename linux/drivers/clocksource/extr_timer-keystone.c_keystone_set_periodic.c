
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_2__ {int hz_period; } ;


 int TCR_ENAMODE_PERIODIC_MASK ;
 int keystone_timer_config (int ,int ) ;
 TYPE_1__ timer ;

__attribute__((used)) static int keystone_set_periodic(struct clock_event_device *evt)
{
 keystone_timer_config(timer.hz_period, TCR_ENAMODE_PERIODIC_MASK);
 return 0;
}
