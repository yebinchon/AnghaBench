
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hi3519_crg_data {int clk_data; } ;


 int ARRAY_SIZE (int ) ;
 int hi3519_fixed_rate_clks ;
 int hi3519_gate_clks ;
 int hi3519_mux_clks ;
 int hisi_clk_unregister_fixed_rate (int ,int ,int ) ;
 int hisi_clk_unregister_gate (int ,int ,int ) ;
 int hisi_clk_unregister_mux (int ,int ,int ) ;
 int of_clk_del_provider (int ) ;
 struct hi3519_crg_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void hi3519_clk_unregister(struct platform_device *pdev)
{
 struct hi3519_crg_data *crg = platform_get_drvdata(pdev);

 of_clk_del_provider(pdev->dev.of_node);

 hisi_clk_unregister_gate(hi3519_gate_clks,
    ARRAY_SIZE(hi3519_mux_clks),
    crg->clk_data);
 hisi_clk_unregister_mux(hi3519_mux_clks,
    ARRAY_SIZE(hi3519_mux_clks),
    crg->clk_data);
 hisi_clk_unregister_fixed_rate(hi3519_fixed_rate_clks,
    ARRAY_SIZE(hi3519_fixed_rate_clks),
    crg->clk_data);
}
