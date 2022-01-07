
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int completion; scalar_t__ async_suspend; } ;
struct device {TYPE_1__ power; } ;


 scalar_t__ pm_async_enabled ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void dpm_wait(struct device *dev, bool async)
{
 if (!dev)
  return;

 if (async || (pm_async_enabled && dev->power.async_suspend))
  wait_for_completion(&dev->power.completion);
}
