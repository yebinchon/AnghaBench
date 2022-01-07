
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int ipmi_si_remove_by_dev (int *) ;

__attribute__((used)) static void ipmi_pci_remove(struct pci_dev *pdev)
{
 ipmi_si_remove_by_dev(&pdev->dev);
}
