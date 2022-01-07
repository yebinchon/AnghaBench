
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_dm_timer {int posted; } ;


 int WARN_ON (int) ;
 int _OMAP_TIMER_WAKEUP_EN_OFFSET ;
 int __omap_dm_timer_read (struct omap_dm_timer*,int,int ) ;

__attribute__((used)) static inline u32 omap_dm_timer_read_reg(struct omap_dm_timer *timer, u32 reg)
{
 WARN_ON((reg & 0xff) < _OMAP_TIMER_WAKEUP_EN_OFFSET);
 return __omap_dm_timer_read(timer, reg, timer->posted);
}
