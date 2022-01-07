
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int bus; } ;
struct pci_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int device_remove_file_self (struct device*,struct device_attribute*) ;
 int pci_lock_rescan_remove () ;
 int pci_rescan_bus (int ) ;
 int pci_stop_and_remove_bus_device (struct pci_dev*) ;
 int pci_unlock_rescan_remove () ;
 struct pci_dev* to_pci_dev (struct device*) ;
 struct zpci_dev* to_zpci (struct pci_dev*) ;
 int zpci_disable_device (struct zpci_dev*) ;
 int zpci_enable_device (struct zpci_dev*) ;

__attribute__((used)) static ssize_t recover_store(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct zpci_dev *zdev = to_zpci(pdev);
 int ret;

 if (!device_remove_file_self(dev, attr))
  return count;

 pci_lock_rescan_remove();
 pci_stop_and_remove_bus_device(pdev);
 ret = zpci_disable_device(zdev);
 if (ret)
  goto error;

 ret = zpci_enable_device(zdev);
 if (ret)
  goto error;

 pci_rescan_bus(zdev->bus);
 pci_unlock_rescan_remove();

 return count;

error:
 pci_unlock_rescan_remove();
 return ret;
}
