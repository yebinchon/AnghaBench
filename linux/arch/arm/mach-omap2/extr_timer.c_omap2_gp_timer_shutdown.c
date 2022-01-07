
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_3__ {int rate; } ;


 int OMAP_TIMER_POSTED ;
 int __omap_dm_timer_stop (TYPE_1__*,int ,int ) ;
 TYPE_1__ clkev ;

__attribute__((used)) static int omap2_gp_timer_shutdown(struct clock_event_device *evt)
{
 __omap_dm_timer_stop(&clkev, OMAP_TIMER_POSTED, clkev.rate);
 return 0;
}
