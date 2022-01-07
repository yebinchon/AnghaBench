
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_dm_timer {int posted; } ;


 int WARN_ON (int) ;
 int _OMAP_TIMER_WAKEUP_EN_OFFSET ;
 int __omap_dm_timer_write (struct omap_dm_timer*,int,int,int ) ;

__attribute__((used)) static void omap_dm_timer_write_reg(struct omap_dm_timer *timer, u32 reg,
      u32 value)
{
 WARN_ON((reg & 0xff) < _OMAP_TIMER_WAKEUP_EN_OFFSET);
 __omap_dm_timer_write(timer, reg, value, timer->posted);
}
