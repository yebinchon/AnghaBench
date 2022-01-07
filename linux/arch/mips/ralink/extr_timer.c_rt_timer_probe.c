
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_timer {scalar_t__ irq; int timer_freq; int * dev; struct clk* membase; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct clk {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int TMR0CTL_PRESCALE_DIV ;
 int clk_get_rate (struct clk*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int) ;
 struct clk* devm_clk_get (int *,int *) ;
 struct clk* devm_ioremap_resource (int *,struct resource*) ;
 struct rt_timer* devm_kzalloc (int *,int,int ) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rt_timer*) ;
 int rt_timer_config (struct rt_timer*,int) ;
 int rt_timer_enable (struct rt_timer*) ;
 int rt_timer_request (struct rt_timer*) ;

__attribute__((used)) static int rt_timer_probe(struct platform_device *pdev)
{
 struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 struct rt_timer *rt;
 struct clk *clk;

 rt = devm_kzalloc(&pdev->dev, sizeof(*rt), GFP_KERNEL);
 if (!rt) {
  dev_err(&pdev->dev, "failed to allocate memory\n");
  return -ENOMEM;
 }

 rt->irq = platform_get_irq(pdev, 0);
 if (rt->irq < 0)
  return rt->irq;

 rt->membase = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(rt->membase))
  return PTR_ERR(rt->membase);

 clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(clk)) {
  dev_err(&pdev->dev, "failed get clock rate\n");
  return PTR_ERR(clk);
 }

 rt->timer_freq = clk_get_rate(clk) / TMR0CTL_PRESCALE_DIV;
 if (!rt->timer_freq)
  return -EINVAL;

 rt->dev = &pdev->dev;
 platform_set_drvdata(pdev, rt);

 rt_timer_request(rt);
 rt_timer_config(rt, 2);
 rt_timer_enable(rt);

 dev_info(&pdev->dev, "maximum frequency is %luHz\n", rt->timer_freq);

 return 0;
}
