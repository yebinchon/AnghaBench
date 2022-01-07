
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct clk_hw** hws; } ;
struct s3c24xx_dclk {int dclk0_div_change_nb; int dclk1_div_change_nb; TYPE_1__ clk_data; } ;
struct platform_device {int dummy; } ;
struct clk_hw {int clk; } ;


 int DCLK_MAX_CLKS ;
 size_t DIV_DCLK0 ;
 size_t DIV_DCLK1 ;
 int clk_hw_unregister (struct clk_hw*) ;
 int clk_notifier_unregister (int ,int *) ;
 struct s3c24xx_dclk* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int s3c24xx_dclk_remove(struct platform_device *pdev)
{
 struct s3c24xx_dclk *s3c24xx_dclk = platform_get_drvdata(pdev);
 struct clk_hw **clk_table = s3c24xx_dclk->clk_data.hws;
 int i;

 clk_notifier_unregister(clk_table[DIV_DCLK1]->clk,
    &s3c24xx_dclk->dclk1_div_change_nb);
 clk_notifier_unregister(clk_table[DIV_DCLK0]->clk,
    &s3c24xx_dclk->dclk0_div_change_nb);

 for (i = 0; i < DCLK_MAX_CLKS; i++)
  clk_hw_unregister(clk_table[i]);

 return 0;
}
