
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
 int clk_notifier_register (int ,int *) ;
 int gcc_ipq4019_cpu_clk_notifier ;
 int gcc_ipq4019_desc ;
 int qcom_cc_probe (struct platform_device*,int *) ;

__attribute__((used)) static int gcc_ipq4019_probe(struct platform_device *pdev)
{
 int err;

 err = qcom_cc_probe(pdev, &gcc_ipq4019_desc);
 if (err)
  return err;

 return clk_notifier_register(apps_clk_src.clkr.hw.clk,
         &gcc_ipq4019_cpu_clk_notifier);
}
