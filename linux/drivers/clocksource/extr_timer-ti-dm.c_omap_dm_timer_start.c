
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tclr; } ;
struct omap_dm_timer {TYPE_1__ context; } ;


 int EINVAL ;
 int OMAP_TIMER_CTRL_REG ;
 int OMAP_TIMER_CTRL_ST ;
 int omap_dm_timer_enable (struct omap_dm_timer*) ;
 int omap_dm_timer_read_reg (struct omap_dm_timer*,int ) ;
 int omap_dm_timer_write_reg (struct omap_dm_timer*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int omap_dm_timer_start(struct omap_dm_timer *timer)
{
 u32 l;

 if (unlikely(!timer))
  return -EINVAL;

 omap_dm_timer_enable(timer);

 l = omap_dm_timer_read_reg(timer, OMAP_TIMER_CTRL_REG);
 if (!(l & OMAP_TIMER_CTRL_ST)) {
  l |= OMAP_TIMER_CTRL_ST;
  omap_dm_timer_write_reg(timer, OMAP_TIMER_CTRL_REG, l);
 }


 timer->context.tclr = l;
 return 0;
}
