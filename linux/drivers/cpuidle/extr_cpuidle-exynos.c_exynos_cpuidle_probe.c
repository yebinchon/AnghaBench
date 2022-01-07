
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int CONFIG_SMP ;
 scalar_t__ IS_ENABLED (int ) ;
 int * cpu_possible_mask ;
 int cpuidle_register (int *,int *) ;
 int dev_err (TYPE_1__*,char*) ;
 int exynos_coupled_idle_driver ;
 scalar_t__ exynos_cpuidle_pdata ;
 void* exynos_enter_aftr ;
 int exynos_idle_driver ;
 scalar_t__ of_machine_is_compatible (char*) ;

__attribute__((used)) static int exynos_cpuidle_probe(struct platform_device *pdev)
{
 int ret;

 if (IS_ENABLED(CONFIG_SMP) &&
     (of_machine_is_compatible("samsung,exynos4210") ||
      of_machine_is_compatible("samsung,exynos3250"))) {
  exynos_cpuidle_pdata = pdev->dev.platform_data;

  ret = cpuidle_register(&exynos_coupled_idle_driver,
           cpu_possible_mask);
 } else {
  exynos_enter_aftr = (void *)(pdev->dev.platform_data);

  ret = cpuidle_register(&exynos_idle_driver, ((void*)0));
 }

 if (ret) {
  dev_err(&pdev->dev, "failed to register cpuidle driver\n");
  return ret;
 }

 return 0;
}
