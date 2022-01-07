
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dm_timer {int capability; TYPE_1__* pdev; int fclk; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ENODEV ;
 int IS_ERR (int ) ;
 int OMAP_TIMER_NEEDS_RESET ;
 int OMAP_TIMER_SRC_32_KHZ ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int __omap_dm_timer_enable_posted (struct omap_dm_timer*) ;
 int clk_get (int *,char*) ;
 int dev_err (int *,char*) ;
 int omap_dm_timer_disable (struct omap_dm_timer*) ;
 int omap_dm_timer_enable (struct omap_dm_timer*) ;
 int omap_dm_timer_of_set_source (struct omap_dm_timer*) ;
 int omap_dm_timer_reset (struct omap_dm_timer*) ;
 int omap_dm_timer_set_source (struct omap_dm_timer*,int ) ;

__attribute__((used)) static int omap_dm_timer_prepare(struct omap_dm_timer *timer)
{
 int rc;





 if (!(timer->capability & OMAP_TIMER_NEEDS_RESET)) {
  timer->fclk = clk_get(&timer->pdev->dev, "fck");
  if (WARN_ON_ONCE(IS_ERR(timer->fclk))) {
   dev_err(&timer->pdev->dev, ": No fclk handle.\n");
   return -EINVAL;
  }
 }

 omap_dm_timer_enable(timer);

 if (timer->capability & OMAP_TIMER_NEEDS_RESET) {
  rc = omap_dm_timer_reset(timer);
  if (rc) {
   omap_dm_timer_disable(timer);
   return rc;
  }
 }

 __omap_dm_timer_enable_posted(timer);
 omap_dm_timer_disable(timer);

 rc = omap_dm_timer_of_set_source(timer);
 if (rc == -ENODEV)
  return omap_dm_timer_set_source(timer, OMAP_TIMER_SRC_32_KHZ);

 return rc;
}
