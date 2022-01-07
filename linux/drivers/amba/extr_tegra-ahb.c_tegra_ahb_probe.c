
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_ahb {int * dev; int regs; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INCORRECT_BASE_ADDR_LOW_BYTE ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_warn (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct tegra_ahb* devm_kzalloc (int *,size_t,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tegra_ahb*) ;
 int tegra_ahb_gizmo ;
 int tegra_ahb_gizmo_init (struct tegra_ahb*) ;

__attribute__((used)) static int tegra_ahb_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct tegra_ahb *ahb;
 size_t bytes;

 bytes = sizeof(*ahb) + sizeof(u32) * ARRAY_SIZE(tegra_ahb_gizmo);
 ahb = devm_kzalloc(&pdev->dev, bytes, GFP_KERNEL);
 if (!ahb)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);


 if (res &&
     (res->start & INCORRECT_BASE_ADDR_LOW_BYTE) ==
     INCORRECT_BASE_ADDR_LOW_BYTE) {
  dev_warn(&pdev->dev, "incorrect AHB base address in DT data - enabling workaround\n");
  res->start -= INCORRECT_BASE_ADDR_LOW_BYTE;
 }

 ahb->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(ahb->regs))
  return PTR_ERR(ahb->regs);

 ahb->dev = &pdev->dev;
 platform_set_drvdata(pdev, ahb);
 tegra_ahb_gizmo_init(ahb);
 return 0;
}
