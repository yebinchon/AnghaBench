
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_rng_data {int clk; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 struct st_rng_data* dev_get_drvdata (int *) ;

__attribute__((used)) static int st_rng_remove(struct platform_device *pdev)
{
 struct st_rng_data *ddata = dev_get_drvdata(&pdev->dev);

 clk_disable_unprepare(ddata->clk);

 return 0;
}
