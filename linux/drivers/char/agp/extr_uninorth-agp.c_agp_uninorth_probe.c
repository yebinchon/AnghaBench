
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ device; int vendor; int dev; } ;
struct device_node {int dummy; } ;
struct agp_device_ids {scalar_t__ device_id; int * chipset_name; } ;
struct agp_bridge_data {int mode; int flags; scalar_t__ capndx; struct pci_dev* dev; int * driver; } ;


 int AGP_ERRATA_FASTWRITES ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ PCI_AGP_STATUS ;
 int PCI_CAP_ID_AGP ;
 int agp_add_bridge (struct agp_bridge_data*) ;
 struct agp_bridge_data* agp_alloc_bridge () ;
 int agp_uninorth_resume ;
 int agp_uninorth_suspend ;
 int dev_err (int *,char*,int ,scalar_t__) ;
 int dev_info (int *,char*,int *) ;
 int is_u3 ;
 struct device_node* of_find_node_by_name (int *,char*) ;
 int* of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 scalar_t__ pci_find_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int *) ;
 int pci_set_drvdata (struct pci_dev*,struct agp_bridge_data*) ;
 int pmac_register_agp_pm (struct pci_dev*,int ,int ) ;
 int u3_agp_driver ;
 struct agp_device_ids* uninorth_agp_device_ids ;
 int uninorth_agp_driver ;
 int uninorth_rev ;

__attribute__((used)) static int agp_uninorth_probe(struct pci_dev *pdev,
         const struct pci_device_id *ent)
{
 struct agp_device_ids *devs = uninorth_agp_device_ids;
 struct agp_bridge_data *bridge;
 struct device_node *uninorth_node;
 u8 cap_ptr;
 int j;

 cap_ptr = pci_find_capability(pdev, PCI_CAP_ID_AGP);
 if (cap_ptr == 0)
  return -ENODEV;


 for (j = 0; devs[j].chipset_name != ((void*)0); ++j) {
  if (pdev->device == devs[j].device_id) {
   dev_info(&pdev->dev, "Apple %s chipset\n",
     devs[j].chipset_name);
   goto found;
  }
 }

 dev_err(&pdev->dev, "unsupported Apple chipset [%04x/%04x]\n",
  pdev->vendor, pdev->device);
 return -ENODEV;

 found:

 uninorth_rev = 0;
 is_u3 = 0;

 uninorth_node = of_find_node_by_name(((void*)0), "uni-n");

 if (uninorth_node == ((void*)0)) {
  is_u3 = 1;
  uninorth_node = of_find_node_by_name(((void*)0), "u3");
 }
 if (uninorth_node) {
  const int *revprop = of_get_property(uninorth_node,
    "device-rev", ((void*)0));
  if (revprop != ((void*)0))
   uninorth_rev = *revprop & 0x3f;
  of_node_put(uninorth_node);
 }







 bridge = agp_alloc_bridge();
 if (!bridge)
  return -ENOMEM;

 if (is_u3)
  bridge->driver = &u3_agp_driver;
 else
  bridge->driver = &uninorth_agp_driver;

 bridge->dev = pdev;
 bridge->capndx = cap_ptr;
 bridge->flags = AGP_ERRATA_FASTWRITES;


 pci_read_config_dword(pdev, cap_ptr+PCI_AGP_STATUS, &bridge->mode);

 pci_set_drvdata(pdev, bridge);
 return agp_add_bridge(bridge);
}
