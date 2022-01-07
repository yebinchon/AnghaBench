
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dn {size_t vf_index; int busno; int devfn; int * pe_num_map; int pe_number; scalar_t__ last_allow_rc; int class_code; int vendor_id; int device_id; } ;
struct pci_dev {scalar_t__ is_virtfn; struct pci_dev* physfn; int class; int vendor; int device; int dev; } ;
struct eeh_dev {int pe_config_addr; } ;


 int EEH_FORCE_DISABLED ;
 int dev_dbg (int *,char*) ;
 int eeh_add_device_early (struct pci_dn*) ;
 int eeh_add_device_late (struct pci_dev*) ;
 int eeh_add_to_parent_pe (struct eeh_dev*) ;
 scalar_t__ eeh_has_flag (int ) ;
 int eeh_rmv_from_parent_pe (struct eeh_dev*) ;
 int eeh_sysfs_add_device (struct pci_dev*) ;
 struct pci_dn* pci_get_pdn (struct pci_dev*) ;
 struct eeh_dev* pdn_to_eeh_dev (struct pci_dn*) ;

void pseries_pcibios_bus_add_device(struct pci_dev *pdev)
{
 struct pci_dn *pdn = pci_get_pdn(pdev);

 if (eeh_has_flag(EEH_FORCE_DISABLED))
  return;

 dev_dbg(&pdev->dev, "EEH: Setting up device\n");
 eeh_add_device_early(pdn);
 eeh_add_device_late(pdev);
 eeh_sysfs_add_device(pdev);
}
