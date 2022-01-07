
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_2__ {int event_id; scalar_t__ clock_count_per_tick; } ;


 TYPE_1__ pwm ;
 int samsung_time_setup (int ,scalar_t__) ;
 int samsung_time_start (int ,int) ;
 int samsung_time_stop (int ) ;

__attribute__((used)) static int samsung_set_periodic(struct clock_event_device *evt)
{
 samsung_time_stop(pwm.event_id);
 samsung_time_setup(pwm.event_id, pwm.clock_count_per_tick - 1);
 samsung_time_start(pwm.event_id, 1);
 return 0;
}
