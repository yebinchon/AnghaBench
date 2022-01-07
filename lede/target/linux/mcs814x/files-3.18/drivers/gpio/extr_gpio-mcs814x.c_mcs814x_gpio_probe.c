
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; int name; } ;
struct TYPE_4__ {int base; int ngpio; int direction_output; int direction_input; int set; int get; int label; int of_node; } ;
struct mcs814x_gpio_chip {TYPE_1__ chip; int regs; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int be32_to_cpup (unsigned int const*) ;
 int dev_err (TYPE_2__*,char*) ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 int gpiochip_add (TYPE_1__*) ;
 int kfree (struct mcs814x_gpio_chip*) ;
 struct mcs814x_gpio_chip* kzalloc (int,int ) ;
 int mcs814x_gpio_direction_input ;
 int mcs814x_gpio_direction_output ;
 int mcs814x_gpio_get ;
 int mcs814x_gpio_set ;
 unsigned int* of_get_property (int ,char*,int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mcs814x_gpio_chip*) ;

__attribute__((used)) static int mcs814x_gpio_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct mcs814x_gpio_chip *mcs814x_chip;
 int ret;
 const unsigned int *num_gpios;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENODEV;

 num_gpios = of_get_property(pdev->dev.of_node, "num-gpios", ((void*)0));
 if (!num_gpios)
  dev_err(&pdev->dev, "FIXME: no num-gpios property\n");

 mcs814x_chip = kzalloc(sizeof(*mcs814x_chip), GFP_KERNEL);
 if (!mcs814x_chip)
  return -ENOMEM;

 mcs814x_chip->regs = devm_ioremap_resource(&pdev->dev, res);
 if (!mcs814x_chip->regs) {
  ret = -ENOMEM;
  goto out;
 }

 platform_set_drvdata(pdev, mcs814x_chip);





 mcs814x_chip->chip.label = pdev->name;
 mcs814x_chip->chip.get = mcs814x_gpio_get;
 mcs814x_chip->chip.set = mcs814x_gpio_set;
 mcs814x_chip->chip.direction_input = mcs814x_gpio_direction_input;
 mcs814x_chip->chip.direction_output = mcs814x_gpio_direction_output;
 mcs814x_chip->chip.ngpio = be32_to_cpup(num_gpios);

 mcs814x_chip->chip.base = -1;

 ret = gpiochip_add(&mcs814x_chip->chip);
 if (ret) {
  dev_err(&pdev->dev, "failed to register gpiochip\n");
  goto out;
 }

 return 0;

out:
 platform_set_drvdata(pdev, ((void*)0));
 kfree(mcs814x_chip);
 return ret;
}
