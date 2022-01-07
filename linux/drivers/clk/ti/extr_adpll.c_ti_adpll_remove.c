
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_adpll_data {int dummy; } ;
struct platform_device {int dev; } ;


 struct ti_adpll_data* dev_get_drvdata (int *) ;
 int ti_adpll_free_resources (struct ti_adpll_data*) ;

__attribute__((used)) static int ti_adpll_remove(struct platform_device *pdev)
{
 struct ti_adpll_data *d = dev_get_drvdata(&pdev->dev);

 ti_adpll_free_resources(d);

 return 0;
}
