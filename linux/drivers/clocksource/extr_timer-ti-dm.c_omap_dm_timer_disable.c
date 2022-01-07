
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dm_timer {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int pm_runtime_put_sync (int *) ;

__attribute__((used)) static void omap_dm_timer_disable(struct omap_dm_timer *timer)
{
 pm_runtime_put_sync(&timer->pdev->dev);
}
