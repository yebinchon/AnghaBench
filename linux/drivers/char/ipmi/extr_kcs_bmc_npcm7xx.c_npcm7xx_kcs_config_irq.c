
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct kcs_bmc {int dummy; } ;


 int IRQF_SHARED ;
 int dev_name (struct device*) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct kcs_bmc*) ;
 int npcm7xx_kcs_irq ;
 int platform_get_irq (struct platform_device*,int ) ;

__attribute__((used)) static int npcm7xx_kcs_config_irq(struct kcs_bmc *kcs_bmc,
      struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 int irq;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 return devm_request_irq(dev, irq, npcm7xx_kcs_irq, IRQF_SHARED,
    dev_name(dev), kcs_bmc);
}
