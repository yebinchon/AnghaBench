
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int MFGPT_PERIODIC ;
 int cs5535_event_clock ;
 int disable_timer (int ) ;
 int start_timer (int ,int ) ;

__attribute__((used)) static int mfgpt_set_periodic(struct clock_event_device *evt)
{
 disable_timer(cs5535_event_clock);
 start_timer(cs5535_event_clock, MFGPT_PERIODIC);
 return 0;
}
