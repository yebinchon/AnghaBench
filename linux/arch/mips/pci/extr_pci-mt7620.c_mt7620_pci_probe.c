
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct resource {int dummy; } ;
struct TYPE_8__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_7__ {int end; scalar_t__ start; } ;
struct TYPE_6__ {int end; scalar_t__ start; } ;


 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int LC_CKDRVPD ;



 int PCIE_LINK_UP_ST ;
 int PCIINT2 ;
 int PCIRST ;
 int PDRV_SW_SET ;
 int PPLL_DRV ;
 int PTR_ERR (int ) ;
 int RALINK_CLKCFG1 ;
 int RALINK_PCI0_BAR0SETUP_ADDR ;
 int RALINK_PCI0_CLASS ;
 int RALINK_PCI0_IMBASEBAR0_ADDR ;
 int RALINK_PCI0_STATUS ;
 int RALINK_PCIE0_CLK_EN ;
 int RALINK_PCI_IOBASE ;
 int RALINK_PCI_IO_MAP_BASE ;
 int RALINK_PCI_MEMBASE ;
 int RALINK_PCI_MEMORY_BASE ;
 int RALINK_PCI_PCICFG_ADDR ;
 int RALINK_PCI_PCIENA ;
 int bridge_base ;
 int bridge_w32 (int,int ) ;
 int dev_err (TYPE_3__*,char*) ;
 int devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 int devm_reset_control_get_exclusive (TYPE_3__*,char*) ;
 TYPE_2__ iomem_resource ;
 TYPE_1__ ioport_resource ;
 int mdelay (int) ;
 int mt7620_controller ;
 int mt7620_pci_hw_init (struct platform_device*) ;
 int mt7628_pci_hw_init (struct platform_device*) ;
 int pci_config_read (int *,int ,int,int,int*) ;
 int pci_config_write (int *,int ,int,int,int) ;
 int pci_load_of_ranges (int *,int ) ;
 int pcie_base ;
 int pcie_m32 (int ,int ,int ) ;
 int pcie_r32 (int ) ;
 int pcie_w32 (int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int ralink_soc ;
 int register_pci_controller (int *) ;
 int reset_control_assert (int ) ;
 int rstpcie0 ;
 int rt_sysc_m32 (int ,int ,int ) ;

__attribute__((used)) static int mt7620_pci_probe(struct platform_device *pdev)
{
 struct resource *bridge_res = platform_get_resource(pdev,
           IORESOURCE_MEM, 0);
 struct resource *pcie_res = platform_get_resource(pdev,
         IORESOURCE_MEM, 1);
 u32 val = 0;

 rstpcie0 = devm_reset_control_get_exclusive(&pdev->dev, "pcie0");
 if (IS_ERR(rstpcie0))
  return PTR_ERR(rstpcie0);

 bridge_base = devm_ioremap_resource(&pdev->dev, bridge_res);
 if (IS_ERR(bridge_base))
  return PTR_ERR(bridge_base);

 pcie_base = devm_ioremap_resource(&pdev->dev, pcie_res);
 if (IS_ERR(pcie_base))
  return PTR_ERR(pcie_base);

 iomem_resource.start = 0;
 iomem_resource.end = ~0;
 ioport_resource.start = 0;
 ioport_resource.end = ~0;


 switch (ralink_soc) {
 case 130:
  if (mt7620_pci_hw_init(pdev))
   return -1;
  break;

 case 129:
 case 128:
  if (mt7628_pci_hw_init(pdev))
   return -1;
  break;

 default:
  dev_err(&pdev->dev, "pcie is not supported on this hardware\n");
  return -1;
 }
 mdelay(50);


 pcie_m32(PCIRST, 0, RALINK_PCI_PCICFG_ADDR);
 mdelay(100);


 if ((pcie_r32(RALINK_PCI0_STATUS) & PCIE_LINK_UP_ST) == 0) {
  reset_control_assert(rstpcie0);
  rt_sysc_m32(RALINK_PCIE0_CLK_EN, 0, RALINK_CLKCFG1);
  if (ralink_soc == 130)
   rt_sysc_m32(LC_CKDRVPD, PDRV_SW_SET, PPLL_DRV);
  dev_err(&pdev->dev, "PCIE0 no card, disable it(RST&CLK)\n");
  return -1;
 }


 bridge_w32(0xffffffff, RALINK_PCI_MEMBASE);
 bridge_w32(RALINK_PCI_IO_MAP_BASE, RALINK_PCI_IOBASE);

 pcie_w32(0x7FFF0001, RALINK_PCI0_BAR0SETUP_ADDR);
 pcie_w32(RALINK_PCI_MEMORY_BASE, RALINK_PCI0_IMBASEBAR0_ADDR);
 pcie_w32(0x06040001, RALINK_PCI0_CLASS);


 pcie_m32(0, PCIINT2, RALINK_PCI_PCIENA);


 pci_config_read(((void*)0), 0, 4, 4, &val);
 pci_config_write(((void*)0), 0, 4, 4, val | 0x7);

 pci_load_of_ranges(&mt7620_controller, pdev->dev.of_node);
 register_pci_controller(&mt7620_controller);

 return 0;
}
