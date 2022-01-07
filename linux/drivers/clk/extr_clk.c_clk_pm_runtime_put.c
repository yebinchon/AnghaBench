
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_core {int dev; int rpm_enabled; } ;


 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static void clk_pm_runtime_put(struct clk_core *core)
{
 if (!core->rpm_enabled)
  return;

 pm_runtime_put_sync(core->dev);
}
