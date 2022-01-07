
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hisi_crg_dev {int clk_data; } ;


 int ARRAY_SIZE (int ) ;
 int hi3516cv300_fixed_rate_clks ;
 int hi3516cv300_gate_clks ;
 int hi3516cv300_mux_clks ;
 int hisi_clk_unregister_fixed_rate (int ,int ,int ) ;
 int hisi_clk_unregister_gate (int ,int ,int ) ;
 int hisi_clk_unregister_mux (int ,int ,int ) ;
 int of_clk_del_provider (int ) ;
 struct hisi_crg_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void hi3516cv300_clk_unregister(struct platform_device *pdev)
{
 struct hisi_crg_dev *crg = platform_get_drvdata(pdev);

 of_clk_del_provider(pdev->dev.of_node);

 hisi_clk_unregister_gate(hi3516cv300_gate_clks,
   ARRAY_SIZE(hi3516cv300_gate_clks), crg->clk_data);
 hisi_clk_unregister_mux(hi3516cv300_mux_clks,
   ARRAY_SIZE(hi3516cv300_mux_clks), crg->clk_data);
 hisi_clk_unregister_fixed_rate(hi3516cv300_fixed_rate_clks,
   ARRAY_SIZE(hi3516cv300_fixed_rate_clks), crg->clk_data);
}
