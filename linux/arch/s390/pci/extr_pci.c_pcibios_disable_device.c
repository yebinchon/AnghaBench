
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int dummy; } ;
struct pci_dev {int dummy; } ;


 struct zpci_dev* to_zpci (struct pci_dev*) ;
 int zpci_debug_exit_device (struct zpci_dev*) ;
 int zpci_fmb_disable_device (struct zpci_dev*) ;

void pcibios_disable_device(struct pci_dev *pdev)
{
 struct zpci_dev *zdev = to_zpci(pdev);

 zpci_fmb_disable_device(zdev);
 zpci_debug_exit_device(zdev);
}
