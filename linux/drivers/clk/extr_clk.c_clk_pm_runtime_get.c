
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_core {int dev; int rpm_enabled; } ;


 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static int clk_pm_runtime_get(struct clk_core *core)
{
 int ret;

 if (!core->rpm_enabled)
  return 0;

 ret = pm_runtime_get_sync(core->dev);
 return ret < 0 ? ret : 0;
}
