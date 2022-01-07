
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta2x11_instance {int dummy; } ;
struct pci_dev {int dummy; } ;


 struct sta2x11_instance* sta2x11_pdev_to_instance (struct pci_dev*) ;

struct sta2x11_instance *sta2x11_get_instance(struct pci_dev *pdev)
{
 return sta2x11_pdev_to_instance(pdev);
}
