
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_2__ {int event_id; } ;


 TYPE_1__ pwm ;
 int samsung_time_stop (int ) ;

__attribute__((used)) static int samsung_shutdown(struct clock_event_device *evt)
{
 samsung_time_stop(pwm.event_id);
 return 0;
}
