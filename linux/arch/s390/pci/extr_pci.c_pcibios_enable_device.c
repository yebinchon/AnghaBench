
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int dummy; } ;
struct pci_dev {int dev; } ;


 int dev_name (int *) ;
 int pci_enable_resources (struct pci_dev*,int) ;
 struct zpci_dev* to_zpci (struct pci_dev*) ;
 int zpci_debug_init_device (struct zpci_dev*,int ) ;
 int zpci_fmb_enable_device (struct zpci_dev*) ;

int pcibios_enable_device(struct pci_dev *pdev, int mask)
{
 struct zpci_dev *zdev = to_zpci(pdev);

 zpci_debug_init_device(zdev, dev_name(&pdev->dev));
 zpci_fmb_enable_device(zdev);

 return pci_enable_resources(pdev, mask);
}
