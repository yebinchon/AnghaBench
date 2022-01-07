
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct zpci_dev {TYPE_1__* bus; int max_bus_speed; } ;
struct TYPE_3__ {int max_bus_speed; } ;


 int EIO ;
 int LIST_HEAD (int ) ;
 int ZPCI_BUS_NR ;
 int pci_bus_add_devices (TYPE_1__*) ;
 int pci_free_resource_list (int *) ;
 int pci_root_ops ;
 TYPE_1__* pci_scan_root_bus (int *,int ,int *,struct zpci_dev*,int *) ;
 int resources ;
 int zpci_cleanup_bus_resources (struct zpci_dev*) ;
 int zpci_setup_bus_resources (struct zpci_dev*,int *) ;

__attribute__((used)) static int zpci_scan_bus(struct zpci_dev *zdev)
{
 LIST_HEAD(resources);
 int ret;

 ret = zpci_setup_bus_resources(zdev, &resources);
 if (ret)
  goto error;

 zdev->bus = pci_scan_root_bus(((void*)0), ZPCI_BUS_NR, &pci_root_ops,
          zdev, &resources);
 if (!zdev->bus) {
  ret = -EIO;
  goto error;
 }
 zdev->bus->max_bus_speed = zdev->max_bus_speed;
 pci_bus_add_devices(zdev->bus);
 return 0;

error:
 zpci_cleanup_bus_resources(zdev);
 pci_free_resource_list(&resources);
 return ret;
}
