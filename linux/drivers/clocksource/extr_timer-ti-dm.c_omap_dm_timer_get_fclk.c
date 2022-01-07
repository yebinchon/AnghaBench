
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dm_timer {struct clk* fclk; } ;
struct clk {int dummy; } ;


 int IS_ERR (struct clk*) ;

__attribute__((used)) static struct clk *omap_dm_timer_get_fclk(struct omap_dm_timer *timer)
{
 if (timer && !IS_ERR(timer->fclk))
  return timer->fclk;
 return ((void*)0);
}
