
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hisi_crg_dev {int clk_data; } ;


 int ARRAY_SIZE (int ) ;
 int hi3798cv200_sysctrl_gate_clks ;
 int hisi_clk_unregister_gate (int ,int ,int ) ;
 int of_clk_del_provider (int ) ;
 struct hisi_crg_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void hi3798cv200_sysctrl_clk_unregister(struct platform_device *pdev)
{
 struct hisi_crg_dev *crg = platform_get_drvdata(pdev);

 of_clk_del_provider(pdev->dev.of_node);

 hisi_clk_unregister_gate(hi3798cv200_sysctrl_gate_clks,
    ARRAY_SIZE(hi3798cv200_sysctrl_gate_clks),
    crg->clk_data);
}
