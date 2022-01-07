
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int calxeda_idle_driver ;
 int cpuidle_register (int *,int *) ;

__attribute__((used)) static int calxeda_cpuidle_probe(struct platform_device *pdev)
{
 return cpuidle_register(&calxeda_idle_driver, ((void*)0));
}
