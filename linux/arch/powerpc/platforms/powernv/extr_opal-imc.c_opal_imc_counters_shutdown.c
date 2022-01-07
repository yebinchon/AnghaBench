
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int disable_core_pmu_counters () ;
 int disable_nest_pmu_counters () ;

__attribute__((used)) static void opal_imc_counters_shutdown(struct platform_device *pdev)
{





 disable_nest_pmu_counters();
 disable_core_pmu_counters();
}
