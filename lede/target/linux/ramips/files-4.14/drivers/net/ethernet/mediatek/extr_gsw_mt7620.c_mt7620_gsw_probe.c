
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mt7620_gsw {int irq; void* port4; TYPE_1__* dev; int base; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 void* PORT4_EPHY ;
 void* PORT4_EXT ;
 int PTR_ERR (int ) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct mt7620_gsw* devm_kzalloc (TYPE_1__*,int,int ) ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mt7620_gsw*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int mt7620_gsw_probe(struct platform_device *pdev)
{
 struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 const char *port4 = ((void*)0);
 struct mt7620_gsw *gsw;
 struct device_node *np = pdev->dev.of_node;

 gsw = devm_kzalloc(&pdev->dev, sizeof(struct mt7620_gsw), GFP_KERNEL);
 if (!gsw)
  return -ENOMEM;

 gsw->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(gsw->base))
  return PTR_ERR(gsw->base);

 gsw->dev = &pdev->dev;

 of_property_read_string(np, "mediatek,port4", &port4);
 if (port4 && !strcmp(port4, "ephy"))
  gsw->port4 = PORT4_EPHY;
 else if (port4 && !strcmp(port4, "gmac"))
  gsw->port4 = PORT4_EXT;
 else
  gsw->port4 = PORT4_EPHY;

 gsw->irq = platform_get_irq(pdev, 0);

 platform_set_drvdata(pdev, gsw);

 return 0;
}
