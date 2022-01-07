
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int tier; unsigned int twer; } ;
struct omap_dm_timer {TYPE_1__ context; } ;


 int EINVAL ;
 int __omap_dm_timer_int_enable (struct omap_dm_timer*,unsigned int) ;
 int omap_dm_timer_disable (struct omap_dm_timer*) ;
 int omap_dm_timer_enable (struct omap_dm_timer*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int omap_dm_timer_set_int_enable(struct omap_dm_timer *timer,
     unsigned int value)
{
 if (unlikely(!timer))
  return -EINVAL;

 omap_dm_timer_enable(timer);
 __omap_dm_timer_int_enable(timer, value);


 timer->context.tier = value;
 timer->context.twer = value;
 omap_dm_timer_disable(timer);
 return 0;
}
