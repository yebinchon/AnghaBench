
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_4__ {int clk; } ;
struct TYPE_5__ {TYPE_1__ hw; } ;
struct TYPE_6__ {TYPE_2__ clkr; } ;


 TYPE_3__ apps_clk_src ;
 int clk_notifier_unregister (int ,int *) ;
 int gcc_ipq4019_cpu_clk_notifier ;

__attribute__((used)) static int gcc_ipq4019_remove(struct platform_device *pdev)
{
 return clk_notifier_unregister(apps_clk_src.clkr.hw.clk,
           &gcc_ipq4019_cpu_clk_notifier);
}
