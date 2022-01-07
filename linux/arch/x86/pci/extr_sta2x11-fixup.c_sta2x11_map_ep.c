
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta2x11_mapping {scalar_t__ amba_base; } ;
struct pci_dev {int dev; } ;


 int AHB_BASE (int ) ;
 int AHB_CRW (int) ;
 int AHB_CRW_ENABLE ;
 int AHB_CRW_WTYPE_MEM ;
 int AHB_PEXHBASE (int ) ;
 int AHB_PEXLBASE (int ) ;
 int STA2X11_AMBA_SIZE ;
 int STA2X11_NR_FUNCS ;
 int dev_info (int *,char*,int ,scalar_t__,scalar_t__) ;
 int pci_read_config_dword (struct pci_dev*,int ,scalar_t__*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 int sta2x11_pdev_to_ep (struct pci_dev*) ;
 struct sta2x11_mapping* sta2x11_pdev_to_mapping (struct pci_dev*) ;

__attribute__((used)) static void sta2x11_map_ep(struct pci_dev *pdev)
{
 struct sta2x11_mapping *map = sta2x11_pdev_to_mapping(pdev);
 int i;

 if (!map)
  return;
 pci_read_config_dword(pdev, AHB_BASE(0), &map->amba_base);


 pci_write_config_dword(pdev, AHB_PEXLBASE(0), 0);
 pci_write_config_dword(pdev, AHB_PEXHBASE(0), 0);
 pci_write_config_dword(pdev, AHB_CRW(0), STA2X11_AMBA_SIZE |
          AHB_CRW_WTYPE_MEM | AHB_CRW_ENABLE);


 for (i = 1; i < STA2X11_NR_FUNCS; i++)
  pci_write_config_dword(pdev, AHB_CRW(i), 0);

 dev_info(&pdev->dev,
   "sta2x11: Map EP %i: AMBA address %#8x-%#8x\n",
   sta2x11_pdev_to_ep(pdev), map->amba_base,
   map->amba_base + STA2X11_AMBA_SIZE - 1);
}
