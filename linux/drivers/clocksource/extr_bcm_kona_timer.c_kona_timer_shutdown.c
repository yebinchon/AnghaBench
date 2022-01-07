
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_2__ {int tmr_regs; } ;


 int kona_timer_disable_and_clear (int ) ;
 TYPE_1__ timers ;

__attribute__((used)) static int kona_timer_shutdown(struct clock_event_device *evt)
{
 kona_timer_disable_and_clear(timers.tmr_regs);
 return 0;
}
