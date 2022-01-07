
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_2__ {int event_id; } ;


 TYPE_1__ pwm ;
 int samsung_time_setup (int ,unsigned long) ;
 int samsung_time_start (int ,int) ;

__attribute__((used)) static int samsung_set_next_event(unsigned long cycles,
    struct clock_event_device *evt)
{
 if (!cycles)
  cycles = 1;

 samsung_time_setup(pwm.event_id, cycles);
 samsung_time_start(pwm.event_id, 0);

 return 0;
}
