
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {int of_reset_n_cells; int of_xlate; int of_node; int * ops; int owner; } ;
struct hisi_reset_controller {TYPE_1__ rcdev; int lock; int membase; } ;


 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int THIS_MODULE ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct hisi_reset_controller* devm_kmalloc (TYPE_2__*,int,int ) ;
 int hisi_reset_of_xlate ;
 int hisi_reset_ops ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int reset_controller_register (TYPE_1__*) ;
 int spin_lock_init (int *) ;

struct hisi_reset_controller *hisi_reset_init(struct platform_device *pdev)
{
 struct hisi_reset_controller *rstc;
 struct resource *res;

 rstc = devm_kmalloc(&pdev->dev, sizeof(*rstc), GFP_KERNEL);
 if (!rstc)
  return ((void*)0);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 rstc->membase = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(rstc->membase))
  return ((void*)0);

 spin_lock_init(&rstc->lock);
 rstc->rcdev.owner = THIS_MODULE;
 rstc->rcdev.ops = &hisi_reset_ops;
 rstc->rcdev.of_node = pdev->dev.of_node;
 rstc->rcdev.of_reset_n_cells = 2;
 rstc->rcdev.of_xlate = hisi_reset_of_xlate;
 reset_controller_register(&rstc->rcdev);

 return rstc;
}
