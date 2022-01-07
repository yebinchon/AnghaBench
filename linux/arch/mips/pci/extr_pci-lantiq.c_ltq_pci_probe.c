
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PCI_PROBE_ONLY ;
 int PTR_ERR (int ) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 int ltq_pci_mapped_cfg ;
 int ltq_pci_membase ;
 int ltq_pci_startup (struct platform_device*) ;
 int pci_clear_flags (int ) ;
 int pci_controller ;
 int pci_load_of_ranges (int *,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int register_pci_controller (int *) ;

__attribute__((used)) static int ltq_pci_probe(struct platform_device *pdev)
{
 struct resource *res_cfg, *res_bridge;

 pci_clear_flags(PCI_PROBE_ONLY);

 res_bridge = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 ltq_pci_membase = devm_ioremap_resource(&pdev->dev, res_bridge);
 if (IS_ERR(ltq_pci_membase))
  return PTR_ERR(ltq_pci_membase);

 res_cfg = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ltq_pci_mapped_cfg = devm_ioremap_resource(&pdev->dev, res_cfg);
 if (IS_ERR(ltq_pci_mapped_cfg))
  return PTR_ERR(ltq_pci_mapped_cfg);

 ltq_pci_startup(pdev);

 pci_load_of_ranges(&pci_controller, pdev->dev.of_node);
 register_pci_controller(&pci_controller);
 return 0;
}
