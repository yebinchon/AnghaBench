
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int cpu_clk; int ddr_clk; int powersave_clk; } ;


 int clk_disable_unprepare (int ) ;
 int cpufreq_unregister_driver (int *) ;
 int kirkwood_cpufreq_driver ;
 TYPE_1__ priv ;

__attribute__((used)) static int kirkwood_cpufreq_remove(struct platform_device *pdev)
{
 cpufreq_unregister_driver(&kirkwood_cpufreq_driver);

 clk_disable_unprepare(priv.powersave_clk);
 clk_disable_unprepare(priv.ddr_clk);
 clk_disable_unprepare(priv.cpu_clk);

 return 0;
}
