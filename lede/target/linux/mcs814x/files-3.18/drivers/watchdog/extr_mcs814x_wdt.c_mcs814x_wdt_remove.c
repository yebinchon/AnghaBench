
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mcs814x_wdt {int wdt_dev; int clk; } ;


 int clk_put (int ) ;
 int kfree (struct mcs814x_wdt*) ;
 struct mcs814x_wdt* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int watchdog_set_drvdata (int *,int *) ;
 int watchdog_unregister_device (int *) ;

__attribute__((used)) static int mcs814x_wdt_remove(struct platform_device *pdev)
{
 struct mcs814x_wdt *wdt = platform_get_drvdata(pdev);

 clk_put(wdt->clk);
 watchdog_unregister_device(&wdt->wdt_dev);
 watchdog_set_drvdata(&wdt->wdt_dev, ((void*)0));
 kfree(wdt);
 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}
