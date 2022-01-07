
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct resource {scalar_t__ end; int start; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ device; int dev; struct resource* resource; int vendor; } ;
struct agp_bridge_data {int mode; scalar_t__ capndx; int * dev_private_data; struct pci_dev* dev; int driver; } ;
struct TYPE_2__ {scalar_t__ chip_id; int * name; int driver; } ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ PCI_AGP_STATUS ;
 int PCI_CAP_ID_AGP ;
 int agp_add_bridge (struct agp_bridge_data*) ;
 struct agp_bridge_data* agp_alloc_bridge () ;
 int agp_put_bridge (struct agp_bridge_data*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int *) ;
 int dev_warn (int *,char*,int ,scalar_t__) ;
 TYPE_1__* intel_agp_chipsets ;
 scalar_t__ intel_gmch_probe (struct pci_dev*,int *,struct agp_bridge_data*) ;
 scalar_t__ pci_assign_resource (struct pci_dev*,int ) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 scalar_t__ pci_find_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int *) ;
 int pci_set_drvdata (struct pci_dev*,struct agp_bridge_data*) ;

__attribute__((used)) static int agp_intel_probe(struct pci_dev *pdev,
      const struct pci_device_id *ent)
{
 struct agp_bridge_data *bridge;
 u8 cap_ptr = 0;
 struct resource *r;
 int i, err;

 cap_ptr = pci_find_capability(pdev, PCI_CAP_ID_AGP);

 bridge = agp_alloc_bridge();
 if (!bridge)
  return -ENOMEM;

 bridge->capndx = cap_ptr;

 if (intel_gmch_probe(pdev, ((void*)0), bridge))
  goto found_gmch;

 for (i = 0; intel_agp_chipsets[i].name != ((void*)0); i++) {



  if (pdev->device == intel_agp_chipsets[i].chip_id) {
   bridge->driver = intel_agp_chipsets[i].driver;
   break;
  }
 }

 if (!bridge->driver) {
  if (cap_ptr)
   dev_warn(&pdev->dev, "unsupported Intel chipset [%04x/%04x]\n",
     pdev->vendor, pdev->device);
  agp_put_bridge(bridge);
  return -ENODEV;
 }

 bridge->dev = pdev;
 bridge->dev_private_data = ((void*)0);

 dev_info(&pdev->dev, "Intel %s Chipset\n", intel_agp_chipsets[i].name);
 r = &pdev->resource[0];
 if (!r->start && r->end) {
  if (pci_assign_resource(pdev, 0)) {
   dev_err(&pdev->dev, "can't assign resource 0\n");
   agp_put_bridge(bridge);
   return -ENODEV;
  }
 }






 if (pci_enable_device(pdev)) {
  dev_err(&pdev->dev, "can't enable PCI device\n");
  agp_put_bridge(bridge);
  return -ENODEV;
 }


 if (cap_ptr) {
  pci_read_config_dword(pdev,
    bridge->capndx+PCI_AGP_STATUS,
    &bridge->mode);
 }

found_gmch:
 pci_set_drvdata(pdev, bridge);
 err = agp_add_bridge(bridge);
 return err;
}
