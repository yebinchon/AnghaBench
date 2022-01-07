
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ async_suspend; } ;
struct device {TYPE_1__ power; } ;


 scalar_t__ pm_async_enabled ;
 int pm_trace_is_enabled () ;

__attribute__((used)) static bool is_async(struct device *dev)
{
 return dev->power.async_suspend && pm_async_enabled
  && !pm_trace_is_enabled();
}
