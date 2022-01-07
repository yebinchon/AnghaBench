
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap3_l3 {int rt; int debug_irq; int app_irq; } ;


 int free_irq (int ,struct omap3_l3*) ;
 int iounmap (int ) ;
 int kfree (struct omap3_l3*) ;
 struct omap3_l3* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int omap3_l3_remove(struct platform_device *pdev)
{
 struct omap3_l3 *l3 = platform_get_drvdata(pdev);

 free_irq(l3->app_irq, l3);
 free_irq(l3->debug_irq, l3);
 iounmap(l3->rt);
 kfree(l3);

 return 0;
}
