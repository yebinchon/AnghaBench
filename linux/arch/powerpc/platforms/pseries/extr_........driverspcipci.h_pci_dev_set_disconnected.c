
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int device_lock (int *) ;
 int device_unlock (int *) ;
 int pci_channel_io_perm_failure ;
 int pci_dev_set_io_state (struct pci_dev*,int ) ;

__attribute__((used)) static inline int pci_dev_set_disconnected(struct pci_dev *dev, void *unused)
{
 device_lock(&dev->dev);
 pci_dev_set_io_state(dev, pci_channel_io_perm_failure);
 device_unlock(&dev->dev);

 return 0;
}
