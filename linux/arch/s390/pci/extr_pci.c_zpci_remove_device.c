
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int bus; } ;


 int pci_remove_root_bus (int ) ;
 int pci_stop_root_bus (int ) ;

void zpci_remove_device(struct zpci_dev *zdev)
{
 if (!zdev->bus)
  return;

 pci_stop_root_bus(zdev->bus);
 pci_remove_root_bus(zdev->bus);
}
