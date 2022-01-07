
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int device; int vendor; int dev; } ;
struct agp_bridge_data {int mode; scalar_t__ capndx; struct pci_dev* dev; int * driver; } ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ PCI_AGP_STATUS ;
 int PCI_CAP_ID_AGP ;
 int agp_add_bridge (struct agp_bridge_data*) ;
 struct agp_bridge_data* agp_alloc_bridge () ;
 int dev_info (int *,char*,int ,int ) ;
 int get_agp_version (struct agp_bridge_data*) ;
 scalar_t__ pci_find_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int *) ;
 int pci_set_drvdata (struct pci_dev*,struct agp_bridge_data*) ;
 int sis_driver ;
 int sis_get_driver (struct agp_bridge_data*) ;

__attribute__((used)) static int agp_sis_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 struct agp_bridge_data *bridge;
 u8 cap_ptr;

 cap_ptr = pci_find_capability(pdev, PCI_CAP_ID_AGP);
 if (!cap_ptr)
  return -ENODEV;


 dev_info(&pdev->dev, "SiS chipset [%04x/%04x]\n",
   pdev->vendor, pdev->device);
 bridge = agp_alloc_bridge();
 if (!bridge)
  return -ENOMEM;

 bridge->driver = &sis_driver;
 bridge->dev = pdev;
 bridge->capndx = cap_ptr;

 get_agp_version(bridge);


 pci_read_config_dword(pdev, bridge->capndx+PCI_AGP_STATUS, &bridge->mode);
 sis_get_driver(bridge);

 pci_set_drvdata(pdev, bridge);
 return agp_add_bridge(bridge);
}
