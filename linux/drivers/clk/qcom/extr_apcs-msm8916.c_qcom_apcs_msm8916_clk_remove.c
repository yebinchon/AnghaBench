
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct clk_regmap_mux_div {int clk_nb; int pclk; } ;


 int clk_notifier_unregister (int ,int *) ;
 struct clk_regmap_mux_div* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int qcom_apcs_msm8916_clk_remove(struct platform_device *pdev)
{
 struct clk_regmap_mux_div *a53cc = platform_get_drvdata(pdev);

 clk_notifier_unregister(a53cc->pclk, &a53cc->clk_nb);

 return 0;
}
