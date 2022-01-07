
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int completion; } ;
struct device {TYPE_1__ power; } ;
typedef int async_func_t ;


 int async_schedule (int ,struct device*) ;
 int get_device (struct device*) ;
 scalar_t__ is_async (struct device*) ;
 int reinit_completion (int *) ;

__attribute__((used)) static bool dpm_async_fn(struct device *dev, async_func_t func)
{
 reinit_completion(&dev->power.completion);

 if (is_async(dev)) {
  get_device(dev);
  async_schedule(func, dev);
  return 1;
 }

 return 0;
}
