
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct tpm_info {int irq; struct resource res; } ;
struct platform_device {int dev; } ;


 int ENODEV ;
 int IORESOURCE_MEM ;
 int dev_err (int *,char*) ;
 struct platform_device* force_pdev ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int tpm_tis_init (int *,struct tpm_info*) ;

__attribute__((used)) static int tpm_tis_plat_probe(struct platform_device *pdev)
{
 struct tpm_info tpm_info = {};
 struct resource *res;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (res == ((void*)0)) {
  dev_err(&pdev->dev, "no memory resource defined\n");
  return -ENODEV;
 }
 tpm_info.res = *res;

 tpm_info.irq = platform_get_irq(pdev, 0);
 if (tpm_info.irq <= 0) {
  if (pdev != force_pdev)
   tpm_info.irq = -1;
  else

   tpm_info.irq = 0;
 }

 return tpm_tis_init(&pdev->dev, &tpm_info);
}
