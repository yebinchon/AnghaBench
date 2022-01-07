
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int cs5535_event_clock ;
 int disable_timer (int ) ;

__attribute__((used)) static int mfgpt_shutdown(struct clock_event_device *evt)
{
 disable_timer(cs5535_event_clock);
 return 0;
}
