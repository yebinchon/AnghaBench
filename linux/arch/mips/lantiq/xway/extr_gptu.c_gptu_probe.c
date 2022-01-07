
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct clk {int dummy; } ;


 int EINVAL ;
 int ENAVAIL ;
 int ENOENT ;
 int GPTU_ID ;
 int GPTU_MAGIC ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int TIMER1A ;
 int TIMER1B ;
 int TIMER2A ;
 int TIMER2B ;
 int TIMER3A ;
 int TIMER3B ;
 int clk_disable (struct clk*) ;
 int clk_enable (struct clk*) ;
 struct clk* clk_get (TYPE_1__*,int *) ;
 int clk_put (struct clk*) ;
 int clkdev_add_gptu (TYPE_1__*,char*,int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*) ;
 struct clk* devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 int gptu_hwexit () ;
 int gptu_hwinit () ;
 struct clk* gptu_membase ;
 int gptu_r32 (int ) ;
 int irqres ;
 int of_irq_to_resource_table (int ,int ,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int gptu_probe(struct platform_device *pdev)
{
 struct clk *clk;
 struct resource *res;

 if (of_irq_to_resource_table(pdev->dev.of_node, irqres, 6) != 6) {
  dev_err(&pdev->dev, "Failed to get IRQ list\n");
  return -EINVAL;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);


 gptu_membase = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(gptu_membase))
  return PTR_ERR(gptu_membase);


 clk = clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(clk)) {
  dev_err(&pdev->dev, "Failed to get clock\n");
  return -ENOENT;
 }
 clk_enable(clk);


 gptu_hwinit();


 if (((gptu_r32(GPTU_ID) >> 8) & 0xff) != GPTU_MAGIC) {
  dev_err(&pdev->dev, "Failed to find magic\n");
  gptu_hwexit();
  clk_disable(clk);
  clk_put(clk);
  return -ENAVAIL;
 }


 clkdev_add_gptu(&pdev->dev, "timer1a", TIMER1A);
 clkdev_add_gptu(&pdev->dev, "timer1b", TIMER1B);
 clkdev_add_gptu(&pdev->dev, "timer2a", TIMER2A);
 clkdev_add_gptu(&pdev->dev, "timer2b", TIMER2B);
 clkdev_add_gptu(&pdev->dev, "timer3a", TIMER3A);
 clkdev_add_gptu(&pdev->dev, "timer3b", TIMER3B);

 dev_info(&pdev->dev, "gptu: 6 timers loaded\n");

 return 0;
}
