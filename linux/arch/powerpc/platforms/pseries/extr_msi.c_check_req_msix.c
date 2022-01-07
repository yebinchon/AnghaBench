
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int check_req (struct pci_dev*,int,char*) ;

__attribute__((used)) static int check_req_msix(struct pci_dev *pdev, int nvec)
{
 return check_req(pdev, nvec, "ibm,req#msi-x");
}
