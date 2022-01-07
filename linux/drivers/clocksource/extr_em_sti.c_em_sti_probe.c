
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct em_sti_priv {int lock; int clk; int rate; struct platform_device* pdev; int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_IRQPOLL ;
 int IRQF_NOBALANCING ;
 int IRQF_TIMER ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int clk_get_rate (int ) ;
 int clk_prepare (int ) ;
 int clk_unprepare (int ) ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int devm_clk_get (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct em_sti_priv* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int,int ,struct em_sti_priv*) ;
 int em_sti_interrupt ;
 int em_sti_register_clockevent (struct em_sti_priv*) ;
 int em_sti_register_clocksource (struct em_sti_priv*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct em_sti_priv*) ;
 int raw_spin_lock_init (int *) ;

__attribute__((used)) static int em_sti_probe(struct platform_device *pdev)
{
 struct em_sti_priv *p;
 struct resource *res;
 int irq;
 int ret;

 p = devm_kzalloc(&pdev->dev, sizeof(*p), GFP_KERNEL);
 if (p == ((void*)0))
  return -ENOMEM;

 p->pdev = pdev;
 platform_set_drvdata(pdev, p);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 p->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(p->base))
  return PTR_ERR(p->base);

 ret = devm_request_irq(&pdev->dev, irq, em_sti_interrupt,
          IRQF_TIMER | IRQF_IRQPOLL | IRQF_NOBALANCING,
          dev_name(&pdev->dev), p);
 if (ret) {
  dev_err(&pdev->dev, "failed to request low IRQ\n");
  return ret;
 }


 p->clk = devm_clk_get(&pdev->dev, "sclk");
 if (IS_ERR(p->clk)) {
  dev_err(&pdev->dev, "cannot get clock\n");
  return PTR_ERR(p->clk);
 }

 ret = clk_prepare(p->clk);
 if (ret < 0) {
  dev_err(&pdev->dev, "cannot prepare clock\n");
  return ret;
 }

 ret = clk_enable(p->clk);
 if (ret < 0) {
  dev_err(&p->pdev->dev, "cannot enable clock\n");
  clk_unprepare(p->clk);
  return ret;
 }
 p->rate = clk_get_rate(p->clk);
 clk_disable(p->clk);

 raw_spin_lock_init(&p->lock);
 em_sti_register_clockevent(p);
 em_sti_register_clocksource(p);
 return 0;
}
