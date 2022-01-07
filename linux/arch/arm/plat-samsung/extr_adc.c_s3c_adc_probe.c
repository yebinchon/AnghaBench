
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct adc_device {unsigned int prescale; scalar_t__ irq; int regs; int clk; int vdd; struct platform_device* pdev; int lock; } ;
typedef enum s3c_cpu_type { ____Placeholder_s3c_cpu_type } s3c_cpu_type ;
struct TYPE_2__ {int driver_data; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int S3C2410_ADCCON ;
 unsigned int S3C2410_ADCCON_PRSCEN ;
 unsigned int S3C2410_ADCCON_PRSCVL (int) ;
 unsigned int S3C2416_ADCCON_RESSEL ;
 unsigned int S3C64XX_ADCCON_RESSEL ;
 int TYPE_ADCV12 ;
 int TYPE_ADCV2 ;
 int TYPE_ADCV3 ;
 struct adc_device* adc_dev ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int dev_name (struct device*) ;
 int devm_clk_get (struct device*,char*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct adc_device* devm_kzalloc (struct device*,int,int ) ;
 int devm_regulator_get (struct device*,char*) ;
 int devm_request_irq (struct device*,scalar_t__,int ,int ,int ,struct adc_device*) ;
 TYPE_1__* platform_get_device_id (struct platform_device*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct adc_device*) ;
 int regulator_enable (int ) ;
 int s3c_adc_irq ;
 int spin_lock_init (int *) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static int s3c_adc_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct adc_device *adc;
 struct resource *regs;
 enum s3c_cpu_type cpu = platform_get_device_id(pdev)->driver_data;
 int ret;
 unsigned tmp;

 adc = devm_kzalloc(dev, sizeof(*adc), GFP_KERNEL);
 if (!adc)
  return -ENOMEM;

 spin_lock_init(&adc->lock);

 adc->pdev = pdev;
 adc->prescale = S3C2410_ADCCON_PRSCVL(49);

 adc->vdd = devm_regulator_get(dev, "vdd");
 if (IS_ERR(adc->vdd)) {
  dev_err(dev, "operating without regulator \"vdd\" .\n");
  return PTR_ERR(adc->vdd);
 }

 adc->irq = platform_get_irq(pdev, 1);
 if (adc->irq <= 0) {
  dev_err(dev, "failed to get adc irq\n");
  return -ENOENT;
 }

 ret = devm_request_irq(dev, adc->irq, s3c_adc_irq, 0, dev_name(dev),
    adc);
 if (ret < 0) {
  dev_err(dev, "failed to attach adc irq\n");
  return ret;
 }

 adc->clk = devm_clk_get(dev, "adc");
 if (IS_ERR(adc->clk)) {
  dev_err(dev, "failed to get adc clock\n");
  return PTR_ERR(adc->clk);
 }

 regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 adc->regs = devm_ioremap_resource(dev, regs);
 if (IS_ERR(adc->regs))
  return PTR_ERR(adc->regs);

 ret = regulator_enable(adc->vdd);
 if (ret)
  return ret;

 clk_prepare_enable(adc->clk);

 tmp = adc->prescale | S3C2410_ADCCON_PRSCEN;


 if (cpu == TYPE_ADCV12)
  tmp |= S3C2416_ADCCON_RESSEL;
 if (cpu == TYPE_ADCV2 || cpu == TYPE_ADCV3)
  tmp |= S3C64XX_ADCCON_RESSEL;

 writel(tmp, adc->regs + S3C2410_ADCCON);

 dev_info(dev, "attached adc driver\n");

 platform_set_drvdata(pdev, adc);
 adc_dev = adc;

 return 0;
}
