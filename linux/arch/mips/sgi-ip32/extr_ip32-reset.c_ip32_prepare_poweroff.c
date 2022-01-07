
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; } ;


 int HZ ;
 int POWERDOWN_FREQ ;
 int POWERDOWN_TIMEOUT ;
 int SIGINT ;
 int add_timer (TYPE_1__*) ;
 int blink_timeout (int *) ;
 int blink_timer ;
 int blink_timer_timeout ;
 scalar_t__ has_panicked ;
 int ip32_poweroff (int *) ;
 int ip32_rtc_device ;
 scalar_t__ jiffies ;
 scalar_t__ kill_cad_pid (int ,int) ;
 int power_timeout ;
 TYPE_1__ power_timer ;
 int shutting_down ;
 int timer_setup (TYPE_1__*,int ,int ) ;

void ip32_prepare_poweroff(void)
{
 if (has_panicked)
  return;

 if (shutting_down || kill_cad_pid(SIGINT, 1)) {

  ip32_poweroff(&ip32_rtc_device);
 }

 shutting_down = 1;
 blink_timer_timeout = POWERDOWN_FREQ;
 blink_timeout(&blink_timer);

 timer_setup(&power_timer, power_timeout, 0);
 power_timer.expires = jiffies + POWERDOWN_TIMEOUT * HZ;
 add_timer(&power_timer);
}
