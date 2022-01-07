
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int cpuidle_unregister (int *) ;
 int kirkwood_idle_driver ;

__attribute__((used)) static int kirkwood_cpuidle_remove(struct platform_device *pdev)
{
 cpuidle_unregister(&kirkwood_idle_driver);
 return 0;
}
