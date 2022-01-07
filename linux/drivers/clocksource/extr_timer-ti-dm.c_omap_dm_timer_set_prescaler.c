
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tclr; } ;
struct omap_dm_timer {TYPE_1__ context; } ;


 int EINVAL ;
 int OMAP_TIMER_CTRL_PRE ;
 int OMAP_TIMER_CTRL_REG ;
 int omap_dm_timer_disable (struct omap_dm_timer*) ;
 int omap_dm_timer_enable (struct omap_dm_timer*) ;
 int omap_dm_timer_read_reg (struct omap_dm_timer*,int ) ;
 int omap_dm_timer_write_reg (struct omap_dm_timer*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int omap_dm_timer_set_prescaler(struct omap_dm_timer *timer,
     int prescaler)
{
 u32 l;

 if (unlikely(!timer) || prescaler < -1 || prescaler > 7)
  return -EINVAL;

 omap_dm_timer_enable(timer);
 l = omap_dm_timer_read_reg(timer, OMAP_TIMER_CTRL_REG);
 l &= ~(OMAP_TIMER_CTRL_PRE | (0x07 << 2));
 if (prescaler >= 0) {
  l |= OMAP_TIMER_CTRL_PRE;
  l |= prescaler << 2;
 }
 omap_dm_timer_write_reg(timer, OMAP_TIMER_CTRL_REG, l);


 timer->context.tclr = l;
 omap_dm_timer_disable(timer);
 return 0;
}
