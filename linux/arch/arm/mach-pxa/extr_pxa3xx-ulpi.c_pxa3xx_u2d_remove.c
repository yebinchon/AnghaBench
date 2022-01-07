
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int start; } ;
struct pxa3xx_u2d_platform_data {int (* exit ) (TYPE_2__*) ;} ;
struct TYPE_5__ {struct pxa3xx_u2d_platform_data* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {int clk; int mmio_base; } ;


 int IORESOURCE_MEM ;
 int clk_put (int ) ;
 scalar_t__ cpu_is_pxa310 () ;
 int iounmap (int ) ;
 int kfree (TYPE_1__*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int pxa310_otg_exit () ;
 int pxa310_stop_otg_hc () ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;
 int stub1 (TYPE_2__*) ;
 TYPE_1__* u2d ;

__attribute__((used)) static int pxa3xx_u2d_remove(struct platform_device *pdev)
{
 struct pxa3xx_u2d_platform_data *pdata = pdev->dev.platform_data;
 struct resource *r;

 if (cpu_is_pxa310()) {
  pxa310_stop_otg_hc();
  pxa310_otg_exit();
 }

 if (pdata->exit)
  pdata->exit(&pdev->dev);

 platform_set_drvdata(pdev, ((void*)0));
 iounmap(u2d->mmio_base);
 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 release_mem_region(r->start, resource_size(r));

 clk_put(u2d->clk);

 kfree(u2d);

 return 0;
}
