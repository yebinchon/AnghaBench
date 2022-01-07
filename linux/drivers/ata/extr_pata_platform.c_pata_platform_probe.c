
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int num_resources; int dev; } ;
struct pata_platform_info {int ioport_shift; } ;


 int EINVAL ;
 int IORESOURCE_IO ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int __pata_platform_probe (int *,struct resource*,struct resource*,struct resource*,int ,int ,int *,int) ;
 int dev_err (int *,char*) ;
 struct pata_platform_info* dev_get_platdata (int *) ;
 int pata_platform_sht ;
 int pio_mask ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int pata_platform_probe(struct platform_device *pdev)
{
 struct resource *io_res;
 struct resource *ctl_res;
 struct resource *irq_res;
 struct pata_platform_info *pp_info = dev_get_platdata(&pdev->dev);




 if ((pdev->num_resources != 3) && (pdev->num_resources != 2)) {
  dev_err(&pdev->dev, "invalid number of resources\n");
  return -EINVAL;
 }




 io_res = platform_get_resource(pdev, IORESOURCE_IO, 0);
 if (io_res == ((void*)0)) {
  io_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
  if (unlikely(io_res == ((void*)0)))
   return -EINVAL;
 }




 ctl_res = platform_get_resource(pdev, IORESOURCE_IO, 1);
 if (ctl_res == ((void*)0)) {
  ctl_res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
  if (unlikely(ctl_res == ((void*)0)))
   return -EINVAL;
 }




 irq_res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);

 return __pata_platform_probe(&pdev->dev, io_res, ctl_res, irq_res,
         pp_info ? pp_info->ioport_shift : 0,
         pio_mask, &pata_platform_sht, 0);
}
