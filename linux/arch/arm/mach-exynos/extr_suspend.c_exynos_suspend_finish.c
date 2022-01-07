
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_warn (char*,int) ;
 int regulator_suspend_finish () ;

__attribute__((used)) static void exynos_suspend_finish(void)
{
 int ret;

 ret = regulator_suspend_finish();
 if (ret)
  pr_warn("Failed to resume regulators from suspend (%d)\n", ret);
}
