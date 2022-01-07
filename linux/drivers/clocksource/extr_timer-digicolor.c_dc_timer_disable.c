
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct digicolor_timer {int timer_id; scalar_t__ base; } ;
struct clock_event_device {int dummy; } ;


 scalar_t__ CONTROL (int ) ;
 int CONTROL_DISABLE ;
 struct digicolor_timer* dc_timer (struct clock_event_device*) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void dc_timer_disable(struct clock_event_device *ce)
{
 struct digicolor_timer *dt = dc_timer(ce);
 writeb(CONTROL_DISABLE, dt->base + CONTROL(dt->timer_id));
}
