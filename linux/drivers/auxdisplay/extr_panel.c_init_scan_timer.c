
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; scalar_t__ function; } ;


 scalar_t__ INPUT_POLL_TIME ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int panel_scan_timer ;
 TYPE_1__ scan_timer ;
 int timer_setup (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void init_scan_timer(void)
{
 if (scan_timer.function)
  return;

 timer_setup(&scan_timer, panel_scan_timer, 0);
 scan_timer.expires = jiffies + INPUT_POLL_TIME;
 add_timer(&scan_timer);
}
