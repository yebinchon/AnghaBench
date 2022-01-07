
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dev; } ;
struct TYPE_3__ {int min_timeout; int max_timeout; int * ops; int * info; } ;
struct mcs814x_wdt {TYPE_1__ wdt_dev; int regs; struct clk* clk; int lock; } ;
struct clk {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR_OR_NULL (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int WDT_MAX_VALUE ;
 struct clk* clk_get (int *,char*) ;
 int clk_get_rate (struct clk*) ;
 int clk_put (struct clk*) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*) ;
 int devm_ioremap (int *,int ,int ) ;
 int kfree (struct mcs814x_wdt*) ;
 struct mcs814x_wdt* kzalloc (int,int ) ;
 int mcs814x_wdt_ident ;
 int mcs814x_wdt_ops ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mcs814x_wdt*) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;
 int watchdog_register_device (TYPE_1__*) ;
 int watchdog_set_drvdata (TYPE_1__*,struct mcs814x_wdt*) ;

__attribute__((used)) static int mcs814x_wdt_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct mcs814x_wdt *wdt;
 int ret;
 struct clk *clk;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENODEV;

 clk = clk_get(((void*)0), "wdt");
 if (IS_ERR_OR_NULL(clk)) {
  dev_err(&pdev->dev, "failed to get watchdog clock\n");
  return PTR_ERR(clk);
 }

 wdt = kzalloc(sizeof(*wdt), GFP_KERNEL);
 if (!wdt) {
  ret = -ENOMEM;
  goto out_clk;
 }

 spin_lock_init(&wdt->lock);
 wdt->clk = clk;
 wdt->wdt_dev.info = &mcs814x_wdt_ident;
 wdt->wdt_dev.ops = &mcs814x_wdt_ops;
 wdt->wdt_dev.min_timeout = 1;

 wdt->wdt_dev.max_timeout = (WDT_MAX_VALUE / clk_get_rate(clk));

 platform_set_drvdata(pdev, wdt);


 wdt->regs = devm_ioremap(&pdev->dev, res->start, resource_size(res));
 if (!wdt->regs) {
  ret = -ENOMEM;
  goto out;
 }

 watchdog_set_drvdata(&wdt->wdt_dev, wdt);

 ret = watchdog_register_device(&wdt->wdt_dev);
 if (ret) {
  dev_err(&pdev->dev, "cannot register watchdog: %d\n", ret);
  goto out;
 }

 dev_info(&pdev->dev, "registered\n");
 return 0;

out:
 platform_set_drvdata(pdev, ((void*)0));
 kfree(wdt);
out_clk:
 clk_put(clk);
 return ret;
}
