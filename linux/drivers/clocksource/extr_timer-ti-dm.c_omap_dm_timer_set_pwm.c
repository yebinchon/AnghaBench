
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tclr; } ;
struct omap_dm_timer {TYPE_1__ context; } ;


 int EINVAL ;
 int OMAP_TIMER_CTRL_GPOCFG ;
 int OMAP_TIMER_CTRL_PT ;
 int OMAP_TIMER_CTRL_REG ;
 int OMAP_TIMER_CTRL_SCPWM ;
 int omap_dm_timer_disable (struct omap_dm_timer*) ;
 int omap_dm_timer_enable (struct omap_dm_timer*) ;
 int omap_dm_timer_read_reg (struct omap_dm_timer*,int ) ;
 int omap_dm_timer_write_reg (struct omap_dm_timer*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int omap_dm_timer_set_pwm(struct omap_dm_timer *timer, int def_on,
     int toggle, int trigger)
{
 u32 l;

 if (unlikely(!timer))
  return -EINVAL;

 omap_dm_timer_enable(timer);
 l = omap_dm_timer_read_reg(timer, OMAP_TIMER_CTRL_REG);
 l &= ~(OMAP_TIMER_CTRL_GPOCFG | OMAP_TIMER_CTRL_SCPWM |
        OMAP_TIMER_CTRL_PT | (0x03 << 10));
 if (def_on)
  l |= OMAP_TIMER_CTRL_SCPWM;
 if (toggle)
  l |= OMAP_TIMER_CTRL_PT;
 l |= trigger << 10;
 omap_dm_timer_write_reg(timer, OMAP_TIMER_CTRL_REG, l);


 timer->context.tclr = l;
 omap_dm_timer_disable(timer);
 return 0;
}
