
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ device; int dev; int vendor; } ;
struct agp_device_ids {char* chipset_name; scalar_t__ device_id; } ;
struct agp_bridge_data {int mode; scalar_t__ capndx; int * driver; struct pci_dev* dev; } ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ PCI_AGP_STATUS ;
 int PCI_CAP_ID_AGP ;


 int agp_add_bridge (struct agp_bridge_data*) ;
 struct agp_bridge_data* agp_alloc_bridge () ;
 struct agp_device_ids* ali_agp_device_ids ;
 int ali_generic_bridge ;
 int ali_m1541_bridge ;
 int dev_err (int *,char*,int ,scalar_t__) ;
 int dev_info (int *,char*,char*) ;
 scalar_t__ pci_find_capability (struct pci_dev*,int ) ;
 int pci_read_config_byte (struct pci_dev*,int,scalar_t__*) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int *) ;
 int pci_set_drvdata (struct pci_dev*,struct agp_bridge_data*) ;

__attribute__((used)) static int agp_ali_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 struct agp_device_ids *devs = ali_agp_device_ids;
 struct agp_bridge_data *bridge;
 u8 hidden_1621_id, cap_ptr;
 int j;

 cap_ptr = pci_find_capability(pdev, PCI_CAP_ID_AGP);
 if (!cap_ptr)
  return -ENODEV;


 for (j = 0; devs[j].chipset_name; j++) {
  if (pdev->device == devs[j].device_id)
   goto found;
 }

 dev_err(&pdev->dev, "unsupported ALi chipset [%04x/%04x])\n",
  pdev->vendor, pdev->device);
 return -ENODEV;


found:
 bridge = agp_alloc_bridge();
 if (!bridge)
  return -ENOMEM;

 bridge->dev = pdev;
 bridge->capndx = cap_ptr;

 switch (pdev->device) {
 case 129:
  bridge->driver = &ali_m1541_bridge;
  break;
 case 128:
  pci_read_config_byte(pdev, 0xFB, &hidden_1621_id);
  switch (hidden_1621_id) {
  case 0x31:
   devs[j].chipset_name = "M1631";
   break;
  case 0x32:
   devs[j].chipset_name = "M1632";
   break;
  case 0x41:
   devs[j].chipset_name = "M1641";
   break;
  case 0x43:
   devs[j].chipset_name = "M1621";
   break;
  case 0x47:
   devs[j].chipset_name = "M1647";
   break;
  case 0x51:
   devs[j].chipset_name = "M1651";
   break;
  default:
   break;
  }

 default:
  bridge->driver = &ali_generic_bridge;
 }

 dev_info(&pdev->dev, "ALi %s chipset\n", devs[j].chipset_name);


 pci_read_config_dword(pdev,
   bridge->capndx+PCI_AGP_STATUS,
   &bridge->mode);

 pci_set_drvdata(pdev, bridge);
 return agp_add_bridge(bridge);
}
