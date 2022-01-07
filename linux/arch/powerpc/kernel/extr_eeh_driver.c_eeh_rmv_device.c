
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_driver {TYPE_1__* err_handler; } ;
struct pci_dn {int pe_number; int vf_index; } ;
struct pci_dev {scalar_t__ hdr_type; } ;
struct eeh_rmv_data {int removed_vf_list; int removed_dev_count; } ;
struct eeh_dev {int rmv_entry; int * pdev; scalar_t__ physfn; int mode; } ;
struct TYPE_2__ {scalar_t__ slot_reset; scalar_t__ error_detected; } ;


 int EEH_DEV_DISCONNECTED ;
 int IODA_INVALID_PE ;
 scalar_t__ PCI_HEADER_TYPE_BRIDGE ;
 struct pci_dev* eeh_dev_to_pci_dev (struct eeh_dev*) ;
 struct pci_dn* eeh_dev_to_pdn (struct eeh_dev*) ;
 int eeh_edev_actionable (struct eeh_dev*) ;
 struct pci_driver* eeh_pcid_get (struct pci_dev*) ;
 int eeh_pcid_put (struct pci_dev*) ;
 int list_add (int *,int *) ;
 int pci_iov_remove_virtfn (scalar_t__,int ) ;
 int pci_lock_rescan_remove () ;
 int pci_name (struct pci_dev*) ;
 int pci_stop_and_remove_bus_device (struct pci_dev*) ;
 int pci_unlock_rescan_remove () ;
 int pr_info (char*,int ) ;

__attribute__((used)) static void eeh_rmv_device(struct eeh_dev *edev, void *userdata)
{
 struct pci_driver *driver;
 struct pci_dev *dev = eeh_dev_to_pci_dev(edev);
 struct eeh_rmv_data *rmv_data = (struct eeh_rmv_data *)userdata;
 if (!eeh_edev_actionable(edev) ||
     (dev->hdr_type == PCI_HEADER_TYPE_BRIDGE))
  return;

 if (rmv_data) {
  driver = eeh_pcid_get(dev);
  if (driver) {
   if (driver->err_handler &&
       driver->err_handler->error_detected &&
       driver->err_handler->slot_reset) {
    eeh_pcid_put(dev);
    return;
   }
   eeh_pcid_put(dev);
  }
 }


 pr_info("EEH: Removing %s without EEH sensitive driver\n",
  pci_name(dev));
 edev->mode |= EEH_DEV_DISCONNECTED;
 if (rmv_data)
  rmv_data->removed_dev_count++;

 if (edev->physfn) {
  if (rmv_data)
   list_add(&edev->rmv_entry, &rmv_data->removed_vf_list);
 } else {
  pci_lock_rescan_remove();
  pci_stop_and_remove_bus_device(dev);
  pci_unlock_rescan_remove();
 }
}
