
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PM_SUSPEND_MEM ;
 int pr_err (char*,int) ;
 int regulator_suspend_prepare (int ) ;

__attribute__((used)) static int exynos_suspend_prepare(void)
{
 int ret;
 ret = regulator_suspend_prepare(PM_SUSPEND_MEM);
 if (ret) {
  pr_err("Failed to prepare regulators for suspend (%d)\n", ret);
  return ret;
 }

 return 0;
}
