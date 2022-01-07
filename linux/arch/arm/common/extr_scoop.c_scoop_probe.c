
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int base; int ngpio; int direction_output; int direction_input; int get; int set; int label; } ;
struct scoop_dev {scalar_t__ base; TYPE_2__ gpio; int suspend_set; int suspend_clr; int scoop_lock; } ;
struct scoop_config {int io_dir; int io_out; int gpio_base; int suspend_set; int suspend_clr; } ;
struct resource {scalar_t__ start; } ;
struct TYPE_4__ {struct scoop_config* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ SCOOP_CPR ;
 scalar_t__ SCOOP_GPCR ;
 scalar_t__ SCOOP_GPWR ;
 scalar_t__ SCOOP_MCR ;
 int dev_name (TYPE_1__*) ;
 int gpiochip_add_data (TYPE_2__*,struct scoop_dev*) ;
 scalar_t__ ioremap (scalar_t__,int ) ;
 int iounmap (scalar_t__) ;
 int iowrite16 (int,scalar_t__) ;
 int kfree (struct scoop_dev*) ;
 struct scoop_dev* kzalloc (int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct scoop_dev*) ;
 int printk (char*,unsigned int,scalar_t__) ;
 int reset_scoop (TYPE_1__*) ;
 int resource_size (struct resource*) ;
 int scoop_gpio_direction_input ;
 int scoop_gpio_direction_output ;
 int scoop_gpio_get ;
 int scoop_gpio_set ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int scoop_probe(struct platform_device *pdev)
{
 struct scoop_dev *devptr;
 struct scoop_config *inf;
 struct resource *mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 int ret;

 if (!mem)
  return -EINVAL;

 devptr = kzalloc(sizeof(struct scoop_dev), GFP_KERNEL);
 if (!devptr)
  return -ENOMEM;

 spin_lock_init(&devptr->scoop_lock);

 inf = pdev->dev.platform_data;
 devptr->base = ioremap(mem->start, resource_size(mem));

 if (!devptr->base) {
  ret = -ENOMEM;
  goto err_ioremap;
 }

 platform_set_drvdata(pdev, devptr);

 printk("Sharp Scoop Device found at 0x%08x -> 0x%8p\n",(unsigned int)mem->start, devptr->base);

 iowrite16(0x0140, devptr->base + SCOOP_MCR);
 reset_scoop(&pdev->dev);
 iowrite16(0x0000, devptr->base + SCOOP_CPR);
 iowrite16(inf->io_dir & 0xffff, devptr->base + SCOOP_GPCR);
 iowrite16(inf->io_out & 0xffff, devptr->base + SCOOP_GPWR);

 devptr->suspend_clr = inf->suspend_clr;
 devptr->suspend_set = inf->suspend_set;

 devptr->gpio.base = -1;

 if (inf->gpio_base != 0) {
  devptr->gpio.label = dev_name(&pdev->dev);
  devptr->gpio.base = inf->gpio_base;
  devptr->gpio.ngpio = 12;
  devptr->gpio.set = scoop_gpio_set;
  devptr->gpio.get = scoop_gpio_get;
  devptr->gpio.direction_input = scoop_gpio_direction_input;
  devptr->gpio.direction_output = scoop_gpio_direction_output;

  ret = gpiochip_add_data(&devptr->gpio, devptr);
  if (ret)
   goto err_gpio;
 }

 return 0;

err_gpio:
 platform_set_drvdata(pdev, ((void*)0));
err_ioremap:
 iounmap(devptr->base);
 kfree(devptr);

 return ret;
}
