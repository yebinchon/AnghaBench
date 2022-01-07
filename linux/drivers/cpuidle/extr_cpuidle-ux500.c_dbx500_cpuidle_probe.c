
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ABB ;
 int ARM ;
 int PRCMU_WAKEUP (int ) ;
 int RTC ;
 int cpuidle_register (int *,int *) ;
 int prcmu_enable_wakeups (int) ;
 int ux500_idle_driver ;

__attribute__((used)) static int dbx500_cpuidle_probe(struct platform_device *pdev)
{

 prcmu_enable_wakeups(PRCMU_WAKEUP(ARM) | PRCMU_WAKEUP(RTC) |
        PRCMU_WAKEUP(ABB));

 return cpuidle_register(&ux500_idle_driver, ((void*)0));
}
