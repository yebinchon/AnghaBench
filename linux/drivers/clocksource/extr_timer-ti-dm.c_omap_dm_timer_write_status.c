
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dm_timer {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int __omap_dm_timer_write_status (struct omap_dm_timer*,unsigned int) ;
 scalar_t__ pm_runtime_suspended (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int omap_dm_timer_write_status(struct omap_dm_timer *timer, unsigned int value)
{
 if (unlikely(!timer || pm_runtime_suspended(&timer->pdev->dev)))
  return -EINVAL;

 __omap_dm_timer_write_status(timer, value);

 return 0;
}
