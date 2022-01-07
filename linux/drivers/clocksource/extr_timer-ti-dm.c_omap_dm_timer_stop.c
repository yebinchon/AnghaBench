
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tclr; } ;
struct omap_dm_timer {int capability; TYPE_1__ context; int posted; int fclk; } ;


 int EINVAL ;
 int OMAP_TIMER_CTRL_REG ;
 int OMAP_TIMER_NEEDS_RESET ;
 int __omap_dm_timer_stop (struct omap_dm_timer*,int ,unsigned long) ;
 unsigned long clk_get_rate (int ) ;
 int omap_dm_timer_disable (struct omap_dm_timer*) ;
 int omap_dm_timer_read_reg (struct omap_dm_timer*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int omap_dm_timer_stop(struct omap_dm_timer *timer)
{
 unsigned long rate = 0;

 if (unlikely(!timer))
  return -EINVAL;

 if (!(timer->capability & OMAP_TIMER_NEEDS_RESET))
  rate = clk_get_rate(timer->fclk);

 __omap_dm_timer_stop(timer, timer->posted, rate);






 timer->context.tclr =
   omap_dm_timer_read_reg(timer, OMAP_TIMER_CTRL_REG);
 omap_dm_timer_disable(timer);
 return 0;
}
