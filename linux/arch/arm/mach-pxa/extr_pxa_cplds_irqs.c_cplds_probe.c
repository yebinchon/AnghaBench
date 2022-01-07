
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct cplds {scalar_t__ irq; int irqdomain; scalar_t__ base; int irq_mask; } ;


 int CPLDS_NB_IRQ ;
 int ENODEV ;
 int ENOMEM ;
 int ENOSYS ;
 int EPROBE_DEFER ;
 scalar_t__ FPGA_IRQ_MASK_EN ;
 scalar_t__ FPGA_IRQ_SET_CLR ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int cplds_irq_domain_ops ;
 int cplds_irq_handler ;
 int dev_err (TYPE_1__*,char*,int,int) ;
 int dev_name (TYPE_1__*) ;
 scalar_t__ devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct cplds* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_irq (TYPE_1__*,int,int ,unsigned long,int ,struct cplds*) ;
 int irq_create_strict_mappings (int ,int,int ,int) ;
 int irq_domain_add_linear (int ,int,int *,struct cplds*) ;
 unsigned long irq_get_trigger_type (int) ;
 int irq_set_irq_wake (int,int) ;
 void* platform_get_irq (struct platform_device*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct cplds*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int cplds_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct cplds *fpga;
 int ret;
 int base_irq;
 unsigned long irqflags = 0;

 fpga = devm_kzalloc(&pdev->dev, sizeof(*fpga), GFP_KERNEL);
 if (!fpga)
  return -ENOMEM;

 fpga->irq = platform_get_irq(pdev, 0);
 if (fpga->irq <= 0)
  return fpga->irq;

 base_irq = platform_get_irq(pdev, 1);
 if (base_irq < 0)
  base_irq = 0;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 fpga->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(fpga->base))
  return PTR_ERR(fpga->base);

 platform_set_drvdata(pdev, fpga);

 writel(fpga->irq_mask, fpga->base + FPGA_IRQ_MASK_EN);
 writel(0, fpga->base + FPGA_IRQ_SET_CLR);

 irqflags = irq_get_trigger_type(fpga->irq);
 ret = devm_request_irq(&pdev->dev, fpga->irq, cplds_irq_handler,
          irqflags, dev_name(&pdev->dev), fpga);
 if (ret == -ENOSYS)
  return -EPROBE_DEFER;

 if (ret) {
  dev_err(&pdev->dev, "couldn't request main irq%d: %d\n",
   fpga->irq, ret);
  return ret;
 }

 irq_set_irq_wake(fpga->irq, 1);
 fpga->irqdomain = irq_domain_add_linear(pdev->dev.of_node,
            CPLDS_NB_IRQ,
            &cplds_irq_domain_ops, fpga);
 if (!fpga->irqdomain)
  return -ENODEV;

 if (base_irq) {
  ret = irq_create_strict_mappings(fpga->irqdomain, base_irq, 0,
       CPLDS_NB_IRQ);
  if (ret) {
   dev_err(&pdev->dev, "couldn't create the irq mapping %d..%d\n",
    base_irq, base_irq + CPLDS_NB_IRQ);
   return ret;
  }
 }

 return 0;
}
