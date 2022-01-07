
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct clk_plt_data {int mclk_lookup; int ether_clk_lookup; } ;


 int PMC_CLK_NUM ;
 int clkdev_drop (int ) ;
 struct clk_plt_data* platform_get_drvdata (struct platform_device*) ;
 int plt_clk_unregister_loop (struct clk_plt_data*,int ) ;
 int plt_clk_unregister_parents (struct clk_plt_data*) ;

__attribute__((used)) static int plt_clk_remove(struct platform_device *pdev)
{
 struct clk_plt_data *data;

 data = platform_get_drvdata(pdev);

 clkdev_drop(data->ether_clk_lookup);
 clkdev_drop(data->mclk_lookup);
 plt_clk_unregister_loop(data, PMC_CLK_NUM);
 plt_clk_unregister_parents(data);
 return 0;
}
