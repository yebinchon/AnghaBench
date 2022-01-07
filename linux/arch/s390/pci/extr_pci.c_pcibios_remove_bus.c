
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int fid; int entry; } ;
struct pci_bus {int dummy; } ;


 struct zpci_dev* get_zdev_by_bus (struct pci_bus*) ;
 int kfree (struct zpci_dev*) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int zpci_cleanup_bus_resources (struct zpci_dev*) ;
 int zpci_dbg (int,char*,int ) ;
 int zpci_destroy_iommu (struct zpci_dev*) ;
 int zpci_exit_slot (struct zpci_dev*) ;
 int zpci_free_domain (struct zpci_dev*) ;
 int zpci_list_lock ;

void pcibios_remove_bus(struct pci_bus *bus)
{
 struct zpci_dev *zdev = get_zdev_by_bus(bus);

 zpci_exit_slot(zdev);
 zpci_cleanup_bus_resources(zdev);
 zpci_destroy_iommu(zdev);
 zpci_free_domain(zdev);

 spin_lock(&zpci_list_lock);
 list_del(&zdev->entry);
 spin_unlock(&zpci_list_lock);

 zpci_dbg(3, "rem fid:%x\n", zdev->fid);
 kfree(zdev);
}
