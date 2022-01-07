
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct hi3519_crg_data {int rstc; } ;


 int hi3519_clk_unregister (struct platform_device*) ;
 int hisi_reset_exit (int ) ;
 struct hi3519_crg_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int hi3519_clk_remove(struct platform_device *pdev)
{
 struct hi3519_crg_data *crg = platform_get_drvdata(pdev);

 hisi_reset_exit(crg->rstc);
 hi3519_clk_unregister(pdev);
 return 0;
}
