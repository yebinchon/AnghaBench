
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dm_timer {scalar_t__ reserved; int fclk; } ;


 int EINVAL ;
 int WARN_ON (int) ;
 int clk_put (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int omap_dm_timer_free(struct omap_dm_timer *timer)
{
 if (unlikely(!timer))
  return -EINVAL;

 clk_put(timer->fclk);

 WARN_ON(!timer->reserved);
 timer->reserved = 0;
 return 0;
}
