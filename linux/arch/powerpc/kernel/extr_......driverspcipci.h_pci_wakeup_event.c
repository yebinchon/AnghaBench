
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int pm_wakeup_event (int *,int) ;

__attribute__((used)) static inline void pci_wakeup_event(struct pci_dev *dev)
{

 pm_wakeup_event(&dev->dev, 100);
}
