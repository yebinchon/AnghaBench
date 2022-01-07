
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ function; } ;
struct wakeup_source {TYPE_1__ timer; } ;


 scalar_t__ pm_wakeup_timer_fn ;

__attribute__((used)) static bool wakeup_source_not_registered(struct wakeup_source *ws)
{




 return ws->timer.function != pm_wakeup_timer_fn;
}
